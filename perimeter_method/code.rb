def perimeter(width, height = width)
  width == height ? 4 * width : (2 * width) + (2 * height)
end
puts perimeter(3)
puts perimeter(4,3)
