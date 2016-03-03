require "sinatra"
require "pg"
require 'pry'

set :views, File.join(File.dirname(__FILE__), "views")

configure :development do
  set :db_config, { dbname: "movies" }
end

configure :test do
  set :db_config, { dbname: "movies_test" }
end

def db_connection
  begin
    connection = PG.connect(Sinatra::Application.db_config)
    yield(connection)
  ensure
    connection.close
  end
end

def psql_query(query)
  result = ''
  db_connection do |conn|
   result = conn.exec(query)
  end
  return result
end

get '/' do
  redirect '/actors'
end

get '/actors' do
  query = "SELECT actors.name, actors.id FROM actors ORDER BY actors.name;"
  @actors = psql_query(query)
  erb :'actors/index'
end

get '/actors/:id' do
  query = "SELECT movies.title, movies.id, cast_members.character, actors.name AS actor
          FROM actors
          LEFT JOIN cast_members ON
            cast_members.actor_id = actors.id
          LEFT JOIN movies ON
            cast_members.movie_id = movies.id
          WHERE
            actors.id = '#{params[:id]}';"
  @actors_details = psql_query(query)
  erb :'actors/show'
end

get '/movies' do
  query = "SELECT movies.id, movies.title, movies.year, movies.rating, genres.name AS genre, studios.name AS studio
          FROM movies
          LEFT JOIN genres ON
            genres.id = movies.genre_id
          LEFT JOIN studios ON
            studios.id = movies.studio_id
          ORDER BY movies.title;"
  @movies = psql_query(query)
  erb :'movies/index'
end

get '/movies/:id' do
  query = "SELECT movies.title, movies.rating, movies.year, actors.name AS actor, actors.id, cast_members.character, genres.name AS genre, studios.name AS studio
          FROM
            movies
          LEFT JOIN genres ON
            genres.id = movies.genre_id
          LEFT JOIN studios ON
            studios.id = movies.studio_id
          LEFT JOIN cast_members ON
            movies.id = cast_members.movie_id
          LEFT JOIN actors ON
            actors.id = cast_members.actor_id
          WHERE movies.id = #{params[:id]}"
  @movies_details = psql_query(query)
  erb :'movies/show'
end
