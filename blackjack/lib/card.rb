class Card
  attr_reader :rank
  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

  def face_card?
    ['J', 'Q', 'K'].include?(@rank)
  end

  def ace_card?
    ['A'].include?(@rank)
  end

  def print_card
    "#{@rank}#{@suit}"
  end
end
