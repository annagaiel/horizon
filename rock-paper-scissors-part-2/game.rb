player_score = 0
comp_score = 0
tokens = {
  'r' => "Rock",
  'p' => "Paper",
  's' => "Scissors"
}
while true do
  puts "Player Score: #{player_score}, Computer Score: #{comp_score}"
  while true do
    puts "Choose rock (r), paper (p), or scissors (s):"
    player_token = gets.chomp
    if tokens.include? player_token
      player_token = tokens[player_token]
      puts "Player chose #{player_token}"
      break
    else
      puts "Invalid entry, try again."
    end
  end
  comp_token = ["Rock", "Paper", "Scissors"].sample
  puts "Computer chose #{comp_token}"
  if player_token == comp_token
    puts "Tie!"
  else
    game_rules = { "Rock" => "Scissors", "Scissors" => "Paper", "Paper" => "Rock" }
    if game_rules[player_token] == comp_token
      player_score += 1
      puts "#{player_token} beats #{comp_token}, Player wins the round."
    else
      comp_score += 1
      puts "#{comp_token} beats #{player_token}, Computer wins the round."
    end
  end
  break if player_score == 2 || comp_score == 2
end
if player_score == 2
    puts "Player wins!"
elsif comp_score == 2
    puts "Computer wins!"
end
