class Cell
  attr_accessor :has_bomb, :is_open
  attr_reader :row, :col
  
  def initialize(row, col, bomb_state)
    @row = row
    @col = col
    @has_bomb = bomb_state
    @is_open = false
  end

  def detonated?
    has_bomb && is_open
  end

end
