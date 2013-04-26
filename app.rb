require 'json'
class App < Sinatra::Base

  set :views, settings.root + '/app/views'

  get '/' do
    error 401 unless valid_key?('123')
    erb :main
  end
  get '/test' do 
    erb :test
  end

  get '/headerinfo' do 
    content_type :json
    env.to_json
  end

  get '/token' do 
    content_type :json
    {1=>'abc'}.to_json
  end
  
  post 'token' do

  end

  def valid_key?(key)
    return true if key == '123'
    return false
  end

  error 401 do 
    'Not Authorized'
  end


end

