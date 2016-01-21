menu = {
  "Hamburger" => 4.00,
  "Hot Dog"   => 3.00,
  "Fries"     => 2.00,
  "Chips"     => 1.00,
  "Water"     => 1.25,
  "Soda"      => 1.50
}
order_valid = false
until order_valid do
puts "Welcome to Goodburger, home of the Goodburger! Can I take your order?"
order = gets.chomp
order = order.split(',')
total_order = 0
  order.each_with_index do |food, index|
    if menu.fetch(food, food).class == Float
      total_order += menu[food]
      order_valid = true if index == order.length - 1
    else
      puts "Sorry! We don't have '#{food}' on the menu."
      break
    end
  end
end
printf("Thanks! Your total is $%.2f. Have a nice day!\n", total_order)
