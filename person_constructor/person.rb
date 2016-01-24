class Person
  def initialize(name, last_name = nil, middle_name = nil)
    @first_name  = name unless name.split(' ').length > 1
    @last_name   = last_name unless last_name.nil?
    @middle_name = middle_name unless middle_name.nil?

    if name.split(' ').length >= 2
      @first_name  = name.split(' ').first
      @last_name   = name.split(' ').last
    end

    if name.split(' ').length == 3
      @middle_name = name.split(' ')[1]
    end
  end
end
