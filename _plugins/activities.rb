require 'json'
require 'net/http'
require 'uri'

$cache = nil

module Jekyll
  class RenderActivitiesTag < Liquid::Tag

    def render(context)
      if $cache.nil? then
        url = URI.parse('https://activities-2.sugarlabs.org/data.json')

        http = Net::HTTP.new(url.host, url.port)
        http.use_ssl = true
        request = Net::HTTP::Get.new(url.request_uri)

        data = http.request(request).body
        $cache = data
      else
        data = $cache
      end

      activities = JSON.parse(data)['activities']
      activities = activities.to_a.shuffle[0...12]

      t = "<ul class='activities'>"
      activities.each do |i|
        id, a = i
        c = a['categories'] || ['none']
        c = c.reverse
        t += "<a href='https://activities-2.sugarlabs.org/view/#{ id }'
                 class='activity category-#{ c[0] }'>
                <img class='icon' src='#{ a['icon'] }'/>
                <span class='title'>#{ a['title']['en-US'] \
                  || a['title']['en_US'] }</span>
              </a>"
      end
      t += "</ul>"
      return t
    end
  end
end

Liquid::Template.register_tag('render_activities', Jekyll::RenderActivitiesTag)
