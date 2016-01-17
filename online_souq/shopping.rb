souq_cart = []
items = [
  "old paperback book",
  "potato",
  "red onion",
  "dried lemon",
  "frankincense",
  "medicinal herbs",
  "saffron",
  "glass spice jar",
  "red fabric",
  "orange fabric",
  "handicrafts",
  "small Persian rug",
  "medium Persian rug",
  "large Persian rug",
  "extra large Persian rug"
]
out_of_stock = []

puts "Welcome to Souq, what is your name?"
name = gets.chomp
puts "Here are the items in Souq:"
items.each { |item| puts "* " + item }
while true do
  puts "Enter the item you want to add to shopping cart? or enter (FINISHED) when done?"
  input = gets.chomp
  break if input.upcase == "FINISHED"
  if items.include? input
    souq_cart << input
  else
    puts input + " is not available."
    out_of_stock << input
  end
end
puts "#{name}, thanks for trying our online Souq platform. Here is a list of the items in
your cart!:"
souq_cart.each { |item| puts "* " + item }
if out_of_stock.empty? == false
  puts "Btw, we noticed you tried entering in some items that aren't part of the online
  Souq. We don't have the following items yet but will let you know if they show
  up!:"
  out_of_stock.each { |item| puts "* " + item }
end
