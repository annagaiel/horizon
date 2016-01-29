class Ingredient

  attr_reader :name, :weight
  def initialize(name, weight)
      @name = name
      @weight = weight
  end

  def self.create_from_grams(self_name, self_weight)
    Ingredient.new(self_name, (self_weight / 1000))
  end
end
