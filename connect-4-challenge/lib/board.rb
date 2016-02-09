class Board
  LETTERS = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
  def initialize(rows = 10, cols = 10)
    @board = []
    rows.times do |rindex|
      rows = []
      cols.times do |cindex|
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

  def horizontal_match
    winner = ''
    consecutive_token = nil
    token_count = 0
    @board.each do |row|
      row.each do |space|
        if space.nil? == false
          if consecutive_token != space && token_count < 4
            consecutive_token = space
            token_count = 1
          elsif consecutive_token == space
            token_count = token_count + 1
          else
            consecutive_token = space
            token_count = 1
          end
        end
      end
      if token_count == 4
        winner = "Player #{consecutive_token} wins"
        break
      else
        token_count = 0
        winner = "no match"
      end
    end
    winner
  end

  def vertical_match
    winner = ''
    consecutive_token = nil
    token_count = 0
    i = 0
    while i < @board.first.size do
      j = 0
      while j < @board.size do
        space = @board[j][i]
        if space.nil? == false
          if consecutive_token != space && token_count < 4
            consecutive_token = space
            token_count = 1
          elsif consecutive_token == space
            token_count = token_count + 1
          else
            consecutive_token = space
            token_count = 1
          end
        end
        j = j + 1
      end
      if token_count == 4
        winner = "Player #{consecutive_token} wins"
        break
      else
        token_count = 0
        winner = "no match"
      end
      i = i + 1
    end
    winner
  end

  def winner?
    horizontal_match != "no match" || vertical_match != "no match"
  end
end
