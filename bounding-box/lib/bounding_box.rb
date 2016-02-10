class BoundingBox

  attr_reader :width, :height

  def initialize(x, y, width, height)
    @x = x
    @y = y
    @width = width
    @height = height
  end

  def left
    @x
  end

  def right
    @x + @width
  end

  def top
    @y + @height
  end

  def bottom
    @y
  end

  def contains_point?(x, y)
    x >= left && x <= right && y >= bottom && y <= top
  end
end
