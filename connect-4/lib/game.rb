require_relative 'board'
require_relative 'player'

puts "Welcome to Connect 4:\nEnter your name player x:"
# name_x = gets.chomp
name_x = "Emily"
x_player = Player.new('x', name_x)
puts "Enter your name player o:"
# name_o = gets.chomp
name_o = "Sarah"
o_player = Player.new('o', name_o)

players = [x_player, o_player].shuffle
turn_index = 0

board = Board.new(6, 7)
puts board.print

game_ongoing = true
while game_ongoing do
  puts "It is #{players[turn_index].name} turn to drop her #{players[turn_index].token}"
  puts "Enter the letter to drop your token:"
  choice = gets.chomp.upcase
  board.add_turn(players[turn_index].token, choice)
  puts board.print
  if board.winner?
    puts "Player #{players[turn_index].token} won."
    game_ongoing = false
  end
  turn_index = turn_index == 0 ? 1 : 0
end

#todo don't change the turn if column letter doesn't exist.
