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

  #create session
  post '/api/session/:token' do 
    # token is the user access token
    # store this session somewhere??
    # lookup_by_api_key
    {:token=>params[:token]}.to_json
  end
  
  #destroy the session
  delete '/api/session/' do 
    # remove the session
    {:message=>'session closed'}.to_json
  end
  
  #get information about current session
  get '/api/session' do 
    dat = {
      :username=>'Dave',
      :token=>'ABC1234DEF567'
    }
    return dat.to_json
  end


  get '/api/navbar' do 
    token = "ABC1234DEF567"
    error 401 unless valid_key?(token) 
    df = DataFixtures.new
    {:nav_items=>df.blocks}.to_json
  end



  
end

