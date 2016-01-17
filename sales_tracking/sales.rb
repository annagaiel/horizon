sale = 0
while sale < 100 do
  puts "Enter your values here!"
  sale += gets.chomp.to_f
end
printf("You've reached $%.2f!\n", sale)
