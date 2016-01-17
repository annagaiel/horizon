prices = []

while true
  puts "What is the price of your item?"
  price = gets.chomp
  prices << price.to_f

  puts "Any more items? (y/n)"
  continue = gets.chomp

  if continue.downcase == 'n'
    break
  end
end

total = 0
prices.each do |price|
  total += price
end

puts "Your total is #{price}."
