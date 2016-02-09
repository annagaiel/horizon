class Board
  LETTERS = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
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
        board_print << ' ' + ('A'..LETTERS[spots.size-1]).to_a.join(' ')  + ' ' + "\n"
      end
    end
    board_print
  end

  def add_turn(token, col_letter)
    token_placed = false
    row_length = @board.size - 1
    while row_length >= 0 do
      if @board[row_length][LETTERS.index(col_letter)].nil?
        @board[row_length][LETTERS.index(col_letter)] = token
        token_placed = true
      end
      break if token_placed
      row_length = row_length - 1
    end
  end

  def winner?
    true
  end

end
