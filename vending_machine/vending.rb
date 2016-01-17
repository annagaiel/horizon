vending_items = "kikat lays peanuts cookie m&m"
puts "What item would you like?"
item = gets.chomp
if vending_items.index(item).nil?
  puts "We don't have that item."
else
  puts "Item index:"
  puts vending_items.index(item)
end
