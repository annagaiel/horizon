require "sinatra"
require "pg"
require 'pry'
require_relative "seeder"
require 'faker'

 configure :development do
   set :db_config, { dbname: "brussels_sprouts_recipes" }
 end

 configure :test do
   set :db_config, { dbname: "brussels_sprouts_recipes" }
 end

include Seeder

 def db_connection
   begin
     connection = PG.connect(Sinatra::Application.db_config)
     yield(connection)
   ensure
     connection.close
   end
 end

 db_connection do |conn|
   (TITLES.size).times do |i|
        fake_ingredients = Faker::University.name
        fake_instruction = Faker::Hacker.say_something_smart
        res = conn.exec_params("INSERT INTO recipes(title, ingredients, instruction)
                  VALUES ($1, $2, $3) RETURNING id;",
                  [TITLES[i+1], fake_ingredients, fake_instruction]
                )
        rand(1..5).times do
          fake_comment = Faker::Lorem.word
          conn.exec_params("INSERT INTO comments(message, recipe_id) VALUES ($1, $2);",
                            [fake_comment, res[0]['id']])
        end
    end
 # How many recipes are there in total?
   recipes_total = conn.exec("SELECT count(*) FROM recipes;")
   puts ">> recipes_total: #{recipes_total[0]['count']}"
   # How many comments are there in total?
   comments_total = conn.exec("SELECT count(*) FROM comments;")
   puts ">> comments_total: #{comments_total[0]['count']}"

 # How would you find out how many comments each of the recipes have?
   res = conn.exec("SELECT recipe_id, count(*) FROM comments GROUP BY recipe_id;")
   res.each do |row|
     puts ">> Recipe #{row['recipe_id']}: has #{row['count']}"
   end

 # What is the name of the recipe that is associated with a specific comment?
  res = conn.exec("SELECT recipes.title, comments.message FROM comments, recipes WHERE
                    comments.recipe_id = recipes.id;")
  res.each do |row|
    puts ">> Comment: #{row['message']} is from Recipe: #{row['title']}"
  end

 # Add a new recipe titled Brussels Sprouts with Goat Cheese.
  res = conn.exec_params("INSERT INTO recipes(title) VALUES ($1) RETURNING id;",
                    ["Brussels Sprouts with Goat Cheese"]
                  )
  recipe_id =  res[0]['id']
  recipes_total = conn.exec("SELECT count(*) FROM recipes;")
 # Add two comments to it.
  conn.exec_params("INSERT INTO comments(message, recipe_id) VALUES ($1, $2);",
                    ["Cheesy Veggies", recipe_id]
                  )
  conn.exec_params("INSERT INTO comments(message, recipe_id) VALUES ($1, $2);",
                    ["Yummy Veggies", recipe_id]
                  )
end
