class Square

  attr_reader :length, :width, :diameter, :perimeter, :area, :x, :y

  def initialize(length, x = 0, y = 0)
    @length = length
    @width = @length
    @diameter = @length * Math.sqrt(2)
    @perimeter = 4 * @length
    @area = @length ** 2
    @x = x
    @y = y
  end

  def contains_point?(x, y)
    (@x + @length) > x && x >= @x && (@y + @length) > y && y >= @y
  end

end
