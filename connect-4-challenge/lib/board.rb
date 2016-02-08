class Board
  def initialize(rows = 10, cols = 10)
    @board = []
    rows.times do
      rows = []
      cols.times do
        rows << nil
      end
      @board << rows
    end
  end

  def rows
    @board
  end

  def print
    letters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    board_print = ''
    @board.each_with_index do |row, index|
      spots = []
      row.each do |space|
        if space.nil?
          spots <<  ' '
        else
          spots << space
        end
      end
      board_print << "|" + spots.join(" ") + "|"+ "\n"
      if index == rows.size - 1
        board_print << ' ' + ('A'..letters[spots.size-1]).to_a.join(' ')  + ' ' + "\n"
      end
    end
    board_print
  end
end
