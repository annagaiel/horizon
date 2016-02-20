require 'sinatra'
require 'pry'
require_relative 'model/game'

use Rack::Session::Cookie, {
  secret: "keep_it_secret_keep_it_safe"
}

get '/' do
  session[:game] ||= Game.new
  @game = session[:game]
  erb :index
end

post '/choose' do
  session[:game].player_throw(params[:choice])
  session[:game].computer_throw
  session[:game].round_winner
  redirect '/'
end

post '/reset' do
  session[:game].reset_score
  redirect '/'
end
