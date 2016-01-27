class Ingredient
  attr_reader :name
  def initialize(quantity = 0.0, unit = "lb(s)", name = "Brussels Sprouts")
    @quantity =  quantity
    @unit = unit
    @name = name
  end

  def summary
    "#{@quantity.to_s} #{@unit} #{@name}"
  end

  def self.parse(input_format)
    input = input_format.split(' ', 3)
    Ingredient.new(input.first.to_f, input[1], input.last)
  end
end

class Recipe

  def initialize(name, instructions, ingredients)
    @name = name
    @instructions = instructions
    @ingredients = ingredients
  end

  def summary
    result = ""
    result += "Name: #{@name}\n"
    result += "\nIngredients\n"
    @ingredients.each do |item|
      result += "- #{item.summary}\n"
    end
    result += "\nInstructions\n"
    @instructions.each_with_index do |steps, index|
      result += "#{index + 1}. #{steps}\n"
    end
    result
  end

  def valid_ingredient?(ingredient)
    ['brussels sprouts', 'spinach', 'eggs', 'milk', 'tofu','seitan',
     'bell pepper','quinoa', 'kale', 'chocolate', 'beer', 'wine', 'whiskey'].include?(ingredient)
  end

  def has_dish?(dish_name)
    @ingredients.map {|item| item.name}.include?(dish_name)
  end

end

ingredient = Ingredient.new(47.0, "lb(s)", "Brussels Sprouts")
puts ingredient.summary
name = "Roasted Brussels Sprouts"
ingredients = [
    Ingredient.new(1.5, "lb(s)", "Brussels sprouts"),
    Ingredient.new(3.0, "tbspn(s)", "Good olive oil"),
    Ingredient.new(0.75, "tspn(s)", "Kosher salt"),
    Ingredient.new(0.5, "tspn(s)", "Freshly ground black pepper")
]
instructions = [
    "Preheat oven to 400 degrees F.",
    "Cut off the brown ends of the Brussels sprouts.",
    "Pull off any yellow outer leaves.",
    "Mix them in a bowl with the olive oil, salt and pepper.",
    "Pour them on a sheet pan and roast for 35 to 40 minutes.",
    "They should be until crisp on the outside and tender on the inside.",
    "Shake the pan from time to time to brown the sprouts evenly.",
    "Sprinkle with more kosher salt ( I like these salty like French fries).",
    "Serve and enjoy!"
    ]
recipe = Recipe.new(name, instructions, ingredients)
puts recipe.summary
puts recipe.valid_ingredient?("berries")
puts recipe.valid_ingredient?("kale")
puts recipe.has_dish?("tofu")
puts recipe.has_dish?("Good olive oil")
parse = Ingredient.parse("47 lb(s) Brussels sprouts")
puts parse.summary
