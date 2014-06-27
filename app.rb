require 'sinatra'
set :bind, '0.0.0.0'

get '/' do
  erb :rps
end

post '/' do
  RPS::SignIn.run(params)
  erb :home
end

get '/sign-up' do
  erb :sign_up
end

post '/sign-up' do
  RPS::SignUp.run(params)
  erb :rps
end

get '/home' do
  erb :home
end

post '/home' do
  @current_games = params[:current_games]
  erb :home
end

post '/home' do
  @game_requests = params[:game_requests]
  erb :home
end

get '/game' do
  erb :game
end

get '/game' do
  @scissors = params[:scissors]
  erb :game
end

get '/game' do
  @rock = params[:rock]
  erb :game
end

get '/game' do
  @paper = params[:paper]
  erb :game
end


