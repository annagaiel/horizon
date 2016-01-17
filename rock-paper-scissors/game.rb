token = ""
invalid = true
while invalid
  puts "Choose rock (r), paper (p), or scissors (s)"
  token = gets.chomp
  if token == 'r' || token == 'p' || token == 's'
    invalid = false
  else
    puts "Invalid entry, try again."
  end
end
if token == 'r'
  token = "rock"
elsif token == 'p'
  token = "paper"
elsif token == 's'
  token = "scissors"
end
puts "Player chose #{token}."
computer_token = ["rock", "paper", "scissors"].sample
puts "Computer chose #{computer_token}."

if token == computer_token
  puts "Tie!"
end

if token == "rock"
  if computer_token == "scissors"
    puts "Rock beats scissors, Player wins!"
  elsif computer_token == "paper"
    puts "Paper beats rock, Computer wins!"
  end
elsif token == "scissors"
  if computer_token == "paper"
    puts "Scissors beats paper, Player wins!"
  elsif computer_token == "rock"
    puts "Rock beats scissors, Computer wins!"
  end
elsif token == "paper"
  if computer_token == "rock"
    puts "Paper beats rock, Player wins!"
  elsif computer_token == "scissors"
    puts "Scissors beats paper, Computer wins!"
  end
end
