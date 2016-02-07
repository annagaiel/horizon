require_relative 'card'

class Hand

  attr_reader :cards, :total_score
  def initialize(cards)
    @cards = cards
    @total_score = 0
  end

  def calculate_hand
    ace_count = 0
    @total_score = 0
    ace_card = false
    @cards.each do |card|
      if card.face_card? || card.rank == 10
        @total_score += 10
      elsif card.ace_card?
        # (card.rank > 1) && (card.rank < 10)
        ace_card = true
        ace_count = ace_count + 1
      else
        @total_score += card.rank
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

  def print_card(player, card)
    result = ''
    result += "#{player} was dealt #{card.to_s}\n"
    result += "#{player} score: #{@total_score}\n"
  end

  def bust?
    @total_score > 21
  end
end
