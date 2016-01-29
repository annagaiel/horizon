class Container

  attr_reader :weight, :maximum_holding_weight, :ingredients
  # Remember that the weight of a container is both how much the container weighs and the weight of its total contents.
  # The number of brussels sprouts that a container holds should be whole numbers and not decimals.

  def initialize(weight, maximum_holding_weight)
    @weight = weight
    @maximum_holding_weight = maximum_holding_weight
    @ingredients = []
  end

  def which_ingredient
    @ingredients.first.name + "s"
  end

  def fill_with_ingredient(ingredient)
    #2 = 140 / 70
    max_amount = maximum_holding_weight / ingredient.weight
    #200 = 60 + ( 70 * 2)
    @weight = weight + (ingredients.weight * max_amount)
    max_amount.floor.times { @ingredients << ingredient }
    # require 'pry'
    # binding.pry
  end

  def how_many_ingredients
    @ingredients.count
  end

  def remove_one_ingredient
    @ingredients.pop
  end

  def empty
    @ingredients = []
  end

end
