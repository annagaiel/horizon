puts "Hello wonderful customer! Welcome to our awesome amusement park."
puts "How many adult tickets would you like?"
adult_tickets = gets.chomp.to_i
puts "How many child tickets would you like?"
child_tickets = gets.chomp.to_i
puts "Here are your #{adult_tickets} adult tickets and #{child_tickets} child tickets!"

hot_dog = 1.27
hamburger = 4.17
funnel_cake = 3.79
ice_cream_sandwich = 0.75

puts "What's the total cost for two hamburgers and two ice cream sandwiches"
puts (2 * hot_dog) + (2 * ice_cream_sandwich)
puts "What's the total cost for eight funnel cakes and a hot dog"
puts (8 * funnel_cake) + hot_dog
puts "What's the total cost for three of each item on the menu"
puts (3 * (hot_dog + hamburger + funnel_cake + ice_cream_sandwich))
