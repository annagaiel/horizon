wide = 8.00
long = 20.00
height = 8.00 / 12.00
cubic_ft = wide * long * height
puts "Cubic Feet: #{cubic_ft}"
if cubic_ft < 50
  puts "Quote Price: $20"
elsif cubic_ft < 150
  puts "Quote Price: $50"
elsif cubic_ft < 300
  puts "Quote Price: $100"
elsif cubic_ft > 300
  puts "Quote Price: $150"
end
