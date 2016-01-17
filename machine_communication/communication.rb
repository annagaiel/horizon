puts "What would you like to order?"
answer = gets.chomp
3.times do |i|
  puts "What did you say?"
  answer = gets.chomp
end
puts "Oh, okay! Your order is #{answer}."
