require 'json'
require 'net/http'
require 'uri'
require 'base64'

$cache = nil

module Jekyll
  class RenderActivitiesTag < Liquid::Tag

    def render(context)
      paths = []
      Dir.glob('sugar-activities/*.json').each do |p|
        if not p == 'sugar-activities/featured.json' then
          paths.push p
        end
      end
      paths = paths.shuffle[0...12]

      activities = []
      paths.each do |path|
        file = File.read path
        data = JSON.parse file
        # Strip the sugar-activities/ and .json
        activities.push [path[17..-6], data]
      end

      t = "<ul class='activities'>"
      activities.each do |i|
        id, a = i
        c = a['categories'] || ['none']
        c = c.reverse
        if c[0] == 'programming' then
          # no yellow on yellow
          c[0] = (c[1] || 'none')
        end
        t += "<a href='https://activities-2.sugarlabs.org/view/#{ id }'
                 class='activity category-#{ c[0] }'>
                <img class='icon' src='data:image/svg+xml;base64,#{ Base64.encode64 a['icon'] || '' }'/>
                <span class='title'>#{ a['title']['en-US'] \
                  || a['title']['en_US'] || '' }</span>
              </a>"
      end
      t += "</ul>"
      return t
    end
  end
end

Liquid::Template.register_tag('render_activities', Jekyll::RenderActivitiesTag)
