require 'json' 
require './data_fixtures'

class App < Sinatra::Base

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

