source "https://rubygems.org"

# Core Jekyll and theme
gem "jekyll"
gem "minima"

# Jekyll plugins
group :jekyll_plugins do
  gem "jekyll-feed"
  gem "github-pages"
  gem "jekyll-sitemap"
end

# Platform-specific gems
platforms :mingw, :x64_mingw, :mswin, :jruby do
  gem "tzinfo"
  gem "tzinfo-data"
end

gem "wdm", platforms: [:mingw, :x64_mingw, :mswin]
gem "http_parser.rb", platforms: [:jruby]

# Additional gems
gem "bundler"
gem "webrick"
gem "rake"