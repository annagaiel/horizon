require_relative 'board'

puts "Welcome to Connect 4"
board = Board.new(6, 7)
puts board.print

board.add_turn('x', 'B')
puts board.print

board.add_turn('o', 'B')
puts board.print
