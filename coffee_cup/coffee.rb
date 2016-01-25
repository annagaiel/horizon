class Coffee
  def initialize(amount = 8, max_capacity = 12)
    @amount = amount
    @max_capacity = max_capacity
  end

  def sip!
    if @amount == 0
      "Hey! You need a refill!"
    else
      @amount -= 1
    end
  end

  def refill!
    if @amount < @max_capacity - 2
      @amount += 1
    else
      "Hey! Your coffee may overflow."
    end
  end
end

c = Coffee.new
puts c.sip!
puts c.refill!
