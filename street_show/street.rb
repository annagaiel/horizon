knife_juggling_tips = [2.10, 0.77, 5.00, 1.00, 3.00]
torch_juggling_tips = [6.00, 3.50, 7.00]
hand_balancing_tips = [2.00, 1.00]
human_blockhead_tips = [0.75, 0.43]
total_income = 0

def sum_per_trick(trick_tips)
 trick_tips.reduce(:+)
end

puts "Knife Juggling:"
printf("%.2f\n", total_income += sum_per_trick(knife_juggling_tips))
puts "Torch Juggling:"
printf("%.2f\n", total_income += sum_per_trick(torch_juggling_tips))
puts "Hand Balancing:"
printf("%.2f\n", total_income += sum_per_trick(hand_balancing_tips))
puts "Human Blockhead:"
printf("%.2f\n", total_income += sum_per_trick(human_blockhead_tips))
puts "Total:"
printf("%.2f\n", total_income)
puts "Average Tip Value:"
printf("%.4f\n", total_income/(knife_juggling_tips.length + torch_juggling_tips.length + hand_balancing_tips.length + human_blockhead_tips.length))

puts "Hello everybody! Today, my accomplice and I will be showing you acts of great daring. Can I have an audience volunteer?"
puts "There's our brave volunteer! What's your name?"
volunteer = gets.chomp
puts "Everyone give a big round of applause for #{volunteer}!"
puts "Now #{volunteer}, what's your favorite number?"
time = gets.chomp.to_i
puts "Alright #{volunteer}, my friend and I will be juggling these knives around you for #{time} seconds. Are you prepared to be amazed?"
