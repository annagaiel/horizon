class PlayingCard

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

  def face_card?
    ['J', 'Q', 'K'].include?(@rank)
  end
end

seven_spades = PlayingCard.new('7', 'spades')
four_diamonds = PlayingCard.new('4', 'diamonds')
king_hearts = PlayingCard.new('K', 'hearts')

hand = [seven_spades, four_diamonds, king_hearts]
hand.each do |card|
  if card.face_card?
    puts "Has a face card!"
  else
    puts "Nope...not a face card"
  end
end

SUITS = ['♣','♥', '♠', '♦']
VALUES = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K']

class Deck
  def initialize
    @collection = []
    SUITS.each do |suit|
      VALUES.each do |value|
        @collection << PlayingCard.new(value, suit)
      end
    end
    @collection.shuffle!
  end

  def draw!
    @collection.pop
  end
end

deck = Deck.new
card = deck.draw!
