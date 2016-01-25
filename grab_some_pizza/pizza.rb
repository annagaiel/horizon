class Pizza

  def initialize(order = nil)
    @order = [:cheese]
    @order |= order unless order.nil?
  end

  def cost
    final_cost = 8.00
    toppings = {
      cheese: 0.10,
      green_pepper: 0.30,
      onion: 0.50,
      mushroom: 0.70,
      pepperoni: 1.10,
      jalapeno: 1.30,
      sausage: 1.70,
      bacon: 1.90
    }
    toppings.each do |item, value|
      final_cost += value if @order.include? item
    end
    "Pay: $" + '%.2f' % final_cost
  end

  def meat
    meat = [:sausage, :pepperoni, :bacon]
    meat_list = []
    meat.each do |item|
      meat_list << item if @order.include? (item)
    end
    meat_list.empty? ? "No Meat" : "Add Meat: " + meat_list.join(', ')
  end

  def other_toppings
    other_toppings = [:cheese, :green_pepper, :onion, :mushroom, :jalepeno]
    other_list = []
    other_toppings.each do |item|
      other_list << item if @order.include? (item)
    end
    "Add Toppings: " + other_list.join(', ')
  end
end

pizza = Pizza.new([:cheese, :green_pepper, :onion, :mushroom])
puts pizza.meat
puts pizza.other_toppings
puts pizza.cost
