score = 0
while true do
puts "Welcome to the Guessing Game! What difficulty would you like to play?"
while true do
  puts "Type easy or hard:"
  level = gets.chomp
  break if level == "easy" || level == "hard"
end
if level == "easy"
  random_number = rand(1..10)
  puts "I've picked a number between 1 and 10. Now guess it!"
else
  random_number = rand(1..20)
  puts "I've picked a number between 1 and 20. Now guess it!"
end

guess_number = gets.chomp.to_i

while guess_number != random_number do
  puts "Nope, try again!"
  guess_number = gets.chomp.to_i
end

puts "You win! Nice job!"
score += 1
puts "Your score was: #{score}"
puts "Would you like to play again? (y) or (n)"
answer = gets.chomp
break if answer == "n"
end
