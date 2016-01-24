class Circle
  def initialize(option)
    if option.kind_of?(Fixnum) || option.kind_of?(Float)
      @radius = option
    elsif option.kind_of?(Hash)
      @radius = option[:radius] || (option[:diameter] / 2)
    end
  end
end

Circle.new(6)
Circle.new({radius: 4})
Circle.new({diameter: 12})
