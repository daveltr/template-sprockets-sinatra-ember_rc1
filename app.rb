require 'json'
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
    error 401 unless valid_key?('123')
    erb :main
  end
  get '/test' do 
    erb :test
  end

end

