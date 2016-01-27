class Circle

  attr_reader :radius, :diameter, :area, :perimeter, :x, :y

  def initialize(radius, x = 0, y = 0)
    @radius    = radius
    @diameter  = radius * 2
    @area      = Math::PI * (@radius ** 2)
    @perimeter = 2 * Math::PI * @radius
    @x = x
    @y = y
  end

end
