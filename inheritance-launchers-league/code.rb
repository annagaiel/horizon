class SuperHero
  attr_reader :public_identity

  def initialize(public_identity, secret_identity)
    @public_identity = public_identity
    @secret_identity = secret_identity
  end

  def species
    "Human"
  end

  def home
    "Earth"
  end

  def fans_per_thousand
    500
  end

  def powers
    ""
  end

  def weakness
    ""
  end

  def backstory
    ""
  end

  def speed_in_mph
    60
  end

  def health
    100
  end

  def psychic?
    false
  end

  private
  attr_reader :secret_identity
end

class Speedster < SuperHero

  def speed_in_mph
    super * 1000
  end

  def powers
    "fire"
  end

  def weakness
    "water"
  end

  def backstory
    "An orphaned looking to find his home"
  end
end

class Brawler < SuperHero

  def health
    super * 20
  end

  def powers
    "laser"
  end

  def weakness
    "ice"
  end

  def backstory
    "A fighter traveling the world"
  end
end

class Detective < SuperHero

  def speed_in_mph
    super / 6
  end

  def powers
    "looking innocent"
  end

  def weakness
    secret_identity
  end

  def backstory
    "An artist who is unknown"
  end

  private
  attr_reader :secret_identity
end

class Demigod < SuperHero

  def home
    "Cosmic Plane"
  end

  def powers
    "thunder"
  end

  def weakness
    "metal"
  end

  def backstory
    "Farmer in Berryland"
  end

end

class JackOfAllTrades < SuperHero

  def species
    "Alien"
  end

  def home
    "Venus"
  end

  def psychic?
    true
  end

  def powers
    "shadow manipulations"
  end

  def weakness
    "wind"
  end

  def backstory
    "Boxer in his hometown"
  end
end

class WaterBased < SuperHero

  def fans_per_thousand
    5
  end

  def home
    "Earth's Oceans"
  end

  def psychic?
    true
  end

  def powers
    "water gun"
  end

  def weakness
    "fire"
  end

  def backstory
    "Ocean fanatic"
  end
end
