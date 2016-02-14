require_relative 'cell'

class Minefield
  attr_reader :row_count, :column_count

  def initialize(row_count, column_count, mine_count)
    @column_count = column_count
    @row_count = row_count
    @board = []
    create_board(row_count, column_count)
    place_bomb(row_count, column_count, mine_count)
  end

  def create_board(row, col)
    row.times do |r|
      row = []
      col.times do |c|
        row << Cell.new(r, c, false)
      end
      @board << row
    end
  end

  def place_bomb(row_count, column_count, mine_count)
    count = 0
    while count < mine_count do
      r = rand(0...row_count)
      c = rand(0...column_count)
      if !@board[r][c].has_bomb
        @board[r][c].has_bomb = true
        count = count + 1
      end
    end
  end

  # Return true if the cell been uncovered, false otherwise.
  def cell_cleared?(row, col)
    @board[row][col].is_open
  end

  # Uncover the given cell. If there are no adjacent mines to this cell
  # it should also clear any adjacent cells as well. This is the action
  # when the player clicks on the cell.
  def clear(row, col)
    return if @board[row][col].is_open
    @board[row][col].is_open = true
    adjacent_list = adjacent_cells(row, col)
    list = adjacent_list.select { |cell| cell.has_bomb }
    if list.size == 0
      adjacent_list.each do |cell|
          clear(cell.row, cell.col)
      end
    end
  end

  def adjacent_cells(row, col)
    adjacent_cells = []
    if (row - 1) >= 0
      adjacent_cells << @board[row-1][col-1] if (col - 1) >= 0
      adjacent_cells << @board[row-1][col]
      adjacent_cells << @board[row-1][col+1] if (col + 1) <= (column_count - 1)
    end

    adjacent_cells << @board[row][col-1] if (col - 1) >= 0
    adjacent_cells << @board[row][col+1] if (col + 1) <= (column_count - 1)

    if (row + 1) <= (row_count - 1)
      adjacent_cells << @board[row+1][col-1] if (col - 1) >= 0
      adjacent_cells << @board[row+1][col]
      adjacent_cells << @board[row+1][col+1] if (col + 1) <= (column_count - 1)
    end
    adjacent_cells
  end

  # Check if any cells have been uncovered that also contained a mine. This is
  # the condition used to see if the player has lost the game.
  def any_mines_detonated?
    @board.each do |row|
      row.each do |cell|
        if cell.detonated?
          return true
        end
      end
    end
    false
  end

  # Check if all cells that don't have mines have been uncovered. This is the
  # condition used to see if the player has won the game.
  def all_cells_cleared?
    @board.each do |row|
      row.each do |cell|
        if !cell.has_bomb && !cell.is_open
          return false
        end
      end
    end
    true
  end

  # Returns the number of mines that are surrounding this cell (maximum of 8).
  def adjacent_mines(row, col)
    adjacent_list = adjacent_cells(row, col)
    mine_count = 0
    adjacent_list.each do |cell|
      if cell.has_bomb
        mine_count = mine_count + 1
      end
    end
    mine_count
  end

  # Returns true if the given cell contains a mine, false otherwise.
  def contains_mine?(row, col)
    @board[row][col].has_bomb
  end
end
