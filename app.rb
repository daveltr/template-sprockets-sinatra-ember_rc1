require 'handlebars_assets'
require 'json'

class App < Sinatra::Base
  set :environment, :development
  set :root, ::File.dirname(__FILE__)
  set :views, settings.root + '/app/views'

  helpers do 
    def valid_key?(key) 
      if key == "ABC1234DEF567"
        return true 
      end
      return false
    end
  end

  get '/' do
    erb :main
  end
  get '/test' do 
    erb :test
  end

end

