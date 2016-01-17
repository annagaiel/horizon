dinner_total = 178
tip = [15, 18, 20, 25].sample

puts "with #{tip}% randomly selected via the program"
printf("You should tip $%.2f\n", dinner_total.to_f * tip.to_f/100)
