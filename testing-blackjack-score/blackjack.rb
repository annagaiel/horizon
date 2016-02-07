require_relative 'deck'

class Hand
  def initialize(cards)
    @cards = cards
    @total_score = 0
  end

  def calculate_hand
    ace_count = 0
    @total_score = 0
    ace_card = false
    @cards.each do |card|
      if card.split('').any? {|c| ['J','Q','K'].include? c} || (card.include? '10')
        @total_score += 10
      elsif card.split('').first.to_i > 0
        @total_score += card.split('').first.to_i
      else
        ace_card = true
        ace_count = ace_count + 1
      end
    end
    determine_ace_value!(ace_count) if ace_card
    @total_score
  end

  def determine_ace_value!(ace_count)
    ace_count.times do
      ace_points = ((@total_score + 11) > 21) ? 1 : 11
      @total_score += ace_points
    end
  end

end

deck = Deck.new
cards = deck.deal(2)
hand = Hand.new(cards)
hand = Hand.new(["A♦", "J♥", "3♥"])
hand.calculate_hand
