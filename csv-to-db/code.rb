require "sinatra"
require "pg"
require 'pry'
require 'csv'

configure :development do
  set :db_config, { dbname: "ingredients" }
end

configure :test do
  set :db_config, { dbname: "ingredients" }
end

def db_connection
  begin
    connection = PG.connect(Sinatra::Application.db_config)
    yield(connection)
  ensure
    connection.close
  end
end

data = CSV.readlines("ingredients.csv")
db_connection do |conn|
  data.each do |row|
    csv_quantity = row[0]
    csv_item = row[1]
    conn.exec_params("INSERT INTO ingredients(quantity, item)
              VALUES ($1, $2);",
              [csv_quantity, csv_item]
            )
  end

  res = conn.exec("SELECT quantity, item FROM ingredients;")

  res.each do |row|
    puts "#{row['quantity']}. #{row['item']}"
  end
end
