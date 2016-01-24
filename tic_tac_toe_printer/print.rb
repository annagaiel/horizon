def print_grid(board)
  board.each_with_index do |row, index|
    row.each_with_index do |token, i|
      if token.nil?
        print " "
      else
        print "#{token}"
      end
      print " | " if i != row.length - 1
      print "\n" if i == row.length - 1
    end
    puts "-" * 10 if index != board.length - 1
  end
end

board_a = [
  ['x', 'o', 'x'],
  ['x', nil, 'o'],
  ['x', 'o', nil]
]

board_b = [
  [nil, 'o', 'x'],
  ['x', 'o', nil],
  ['x', 'o', nil]
]

puts "Board A:"
print_grid(board_a)
puts "Board B:"
print_grid(board_b)
