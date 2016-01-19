player_score = 0
comp_score = 0
tokens = {
  'r' => "Rock",
  'p' => "Paper",
  's' => "Scissors"
}
until player_score == 2 || comp_score == 2 do
  puts "Player Score: #{player_score}, Computer Score: #{comp_score}"
  player_token = nil
  until tokens.value? player_token do
    puts "Choose rock (r), paper (p), or scissors (s):"
    player_token = gets.chomp
    if tokens.include? player_token
      player_token = tokens[player_token]
      puts "Player chose #{player_token}"
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
end
puts player_score == 2 ? "Player wins!" : "Computer wins!"
