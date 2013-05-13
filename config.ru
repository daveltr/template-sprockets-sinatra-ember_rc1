require "bundler/setup"
Bundler.require

require 'sprockets'

root = ::File.dirname(__FILE__)
require ::File.join( root, 'app' )

HandlebarsAssets::Config.ember = true
HandlebarsAssets::Config.path_prefix = 'javascripts/templates'

map '/assets' do
  environment = Sprockets::Environment.new
  environment.append_path 'vendor/assets/components'
  environment.append_path 'app/assets'
  environment.append_path 'spec' if (App.development? || App.test?)
  environment.append_path HandlebarsAssets.path
  run environment
end

run App
