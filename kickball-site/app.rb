require 'rubygems'
require 'sinatra'
require 'json'
require 'pry'
require 'erb'

# binding.pry
file = File.read('roster.json')
data_hash = JSON.parse(file)

get '/' do
  erb :application
end

get "/teams" do
  @teams = data_hash.keys
  erb :index
end

get "/teams/:team_name" do
  # binding.pry
  @team_name = params[:team_name]
  @team_name_info = data_hash[@team_name]
  erb :show
end

get "/positions" do
  @positions = data_hash.first[1].keys
  erb :positions
end

get "/positions/:postion_name" do
  # binding.pry
  @position_name = params[:postion_name]
  @players_position = data_hash
  erb :players_position
end
