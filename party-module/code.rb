PersonalizedHavocError = "You should define this yourself!"

module PartyGoer
  @@drink_count = 0

  def drink
    @@drink_count += 1
    @@drink_count <= 3
  end

  def sing
    "La la la la la"
  end

  def cause_havoc
    raise PersonalizedHavocError
  end

  def invited?
    true
  end
end
