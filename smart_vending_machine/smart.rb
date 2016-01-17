puts "Hello, I'm the first and only Talking Vending Machine.\n
What would you like today?"
order = gets.chomp
while true
  puts "How many of those would you like?"
  number_quantity = gets.chomp
  if number_quantity.to_i.to_s == number_quantity
    number_quantity = number_quantity.to_i
    break
  else
    break if number_quantity.index("tons").nil? == false
  end
end

if number_quantity.is_a? Numeric
  number_quantity.times do
    puts "#{order}"
  end
end

if number_quantity.is_a? String
  while true do
    puts "#{order}"
    break if rand(15) == 0
  end
end
puts "There you go! Come again!"
