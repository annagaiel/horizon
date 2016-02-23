require 'sinatra'
require 'csv'
require 'pry'
require_relative "app/models/television_show"
require_relative "app/models/tv"

set :views, File.join(File.dirname(__FILE__), "app/views")

get '/television_shows' do
  @tv ||= Tv.new
  erb :index
end

get '/television_shows/new' do
  erb :new
end

post '/television_shows' do
  @tv ||= Tv.new
  if params[:title] == '' || params[:network] == '' || params[:synopsis] == '' || params[:starting_year] == ''
    @error = 'Please fill in all required fields'
    erb :new
  elsif @tv.duplicate?(params[:title])
    @error = 'The show has already been added'
    erb :new
  else
    @tv.add_shows(TelevisionShow.new(params[:title], params[:network], params[:starting_year], params[:synopsis], params[:genre]))
    redirect '/television_shows'
  end
end
