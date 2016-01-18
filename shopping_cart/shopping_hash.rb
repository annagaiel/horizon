prices = {}
quantities = {}

while true
  puts "What is the name of your item?"
  name = gets.chomp

  if prices[name].nil?
    puts "What is the price of your item?"
    prices[name] = gets.chomp.to_f
  end

  puts "How many do you want to add?"
  if quantities[name].nil?
    quantities[name] = 0
  end
  quantities[name] += gets.chomp.to_i

  puts "Any more items? (y/n)"
  continue = gets.chomp

  if continue.downcase == 'n'
    break
  end
end

# 2 Apples ($1.00)
# 1 Orange ($.50)
# 1 Pear ($0.25)
total = 0
prices.each do |name, price|
  subtotal = quantities[name] * price
  puts "(#{quantities[name]}) #{name}: #{price} ea: #{subtotal}"
  total = total + subtotal
end

puts "Your total is #{total}"
