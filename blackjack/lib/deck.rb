require_relative 'card'

class Deck
  SUITS = ['♦', '♣', '♠', '♥']
  RANKS = [2,3,4,5,6,7,8,9,10,'J','Q','K','A']

  attr_accessor :deck_cards

  def initialize
    @deck_cards = build_deck
  end

  def build_deck
    cards = []
    RANKS.each do |rank|
      SUITS.each do |suit|
        cards << Card.new(rank, suit)
      end
    end
    cards
  end

  def shuffle!
    @deck_cards.shuffle!
  end

  def deal(num)
    @deck_cards.pop(num)
  end

  def hit
    deal(1).first
  end
end
