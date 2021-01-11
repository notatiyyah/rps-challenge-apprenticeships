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
    @name = session[:name]
    @game = session[:game]
    erb :game
  end

  post "/move" do
    session[:game] = CalculateGame.new(params.keys[0])
    redirect "/game"
  end

  run! if app_file == $0
end
