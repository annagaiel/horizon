require 'sinatra'
require 'csv'
require 'pry'

get '/' do
  erb :index
end

get '/articles' do
  @articles = CSV.readlines('articles.csv', :headers => true)
  erb :show
end

post '/articles/new' do
  article_title = params['article_title']
  article_url = params['article_url']
  article_description = params['article_description']

  if article_title != "" || article_url != "" || article_description != ""
    errors = 'All fields are required. Do not leave blanks.'
    CSV.open('articles.csv', 'a') do |csv|
      csv << [article_title, article_url, article_description]
    end
    redirect '/articles'
  else
    redirect '/articles/new'
  end
end

get '/articles/new' do
  erb :new
end
