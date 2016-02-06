# -Game
# -Board
# -Players
# -Spots
require_relative 'player'
require_relative 'board'

x_player = Player.new('x')
o_player = Player.new('o')

board = Board.new

players = [x_player, o_player].shuffle
turn_index = 0

while board.empty_spaces? && !board.winner?
  puts "It is #{players[turn_index].character} turn."
  puts "What row do you want to play?"
  row_index = gets.chomp.to_i
  puts "What column do you want to play?"
  col_index = gets.chomp.to_i

  board.add_turn(players[turn_index].character, row_index, col_index)

  turn_index = turn_index == 0 ? 1 : 0

  puts board.print
end
