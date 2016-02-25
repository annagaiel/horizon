require "sinatra"
require "pg"
require_relative "./app/models/article"
require_relative "./app/models/database"
require 'pry'

set :views, File.join(File.dirname(__FILE__), "app/views")

configure :development do
  set :db_config, { dbname: "news_aggregator_development" }
end

configure :test do
  set :db_config, { dbname: "news_aggregator_test" }
end

def db_connection
  begin
    connection = PG.connect(Sinatra::Application.db_config)
    yield(connection)
  ensure
    connection.close
  end
end

use Rack::Session::Cookie, {
  secret: "keep_it_secret_keep_it_safe"
}

get "/" do
  redirect "/articles"
end

get "/articles" do
  # Retrieve all articles from the database
  @articles = db_connection { |conn| conn.exec("SELECT title, url, description FROM articles") }
  erb :index
end

post "/articles" do
  title = params["article_title"]
  url = params["article_url"]
  description = params["article_description"]

  article = Article.new(title, url, description)
  # db_connection { |conn| conn.exec("SELECT url FROM articles") }
  @error = article.error
  if @error.size == 0
    # Insert new article into the database
    db_connection do |conn|
      conn.exec_params("INSERT INTO articles (title, url, description)
       VALUES ($1, $2, $3)",
      [title, url, description])
    end
    redirect "/articles"
  else
    session[:title] = title
    @error
    erb :new
  end
end

get "/articles/new" do
  @error = []
  erb :new
end
