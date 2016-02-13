class PersonalizedHavocError < Exception
end

module PartyGoer
  def initialize
    @drink_count = 0
  end

  def drink
    @drink_count += 1
    @drink_count < 3
  end

  def sing
    "La la la la la"
  end

  def cause_havoc
     raise PersonalizedHavocError, "You should define this yourself!"
  end

  def invited?
    true
  end
end
