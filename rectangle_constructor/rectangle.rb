class Rectangle
  def initialize(width, height = width)
    @height = height
    @width = width
    @area = @height * @width
  end
end
Rectangle.new(5, 6)
Rectangle.new(12)
