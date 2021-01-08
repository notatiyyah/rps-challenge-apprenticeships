require 'sinatra/base'
class RockPaperScissors < Sinatra::Base
  enable :sessions
  set :session_secret, "secret"

  get '/test' do
    'test page'
  end

  get "/" do
    erb :home_page
  end

  post "/name" do
    session[:name] = params["name"]
    redirect "/game"
  end

  get "/game" do
    p session[:name]
    erb :game, :locals => { :name => session[:name] }
  end

  run! if app_file == $0
end
