require "pry"
require_relative '../blackjack'

describe Deck do
  let(:deck) { Deck.new } # creates a variable that can be used for tests

  describe "#build_deck" do
    it "builds a deck of 52 cards" do
      expect(deck.cards.size).to eq 52
    end

    it "creates unique cards" do
      expect(deck.cards.uniq.size).to eq 52
    end

    it "shuffles deck aftering being built" do
      expect(deck.cards.sort).to_not eq deck.cards

      # it is good not to rely on negative tests alone
      # so we assert that after sorting the deck it looks like we expect
      expect(deck.cards.sort[0..1]).to eq ["10♠", "10♣"]
    end
  end

  describe "#deal" do
    it "removes correct number of cards" do
      start_size = deck.cards.size
      finish_size = start_size - 2

      deck.deal(2)

      expect(deck.cards.size).to eq finish_size
    end

    it "deals the top card in the deck" do
      correct_card = deck.cards[-1]
      expect(deck.deal(1)).to eq [correct_card]
    end
  end
end

# These will be useful for making different hands
# '♦', '♣', '♠', '♥'

describe Hand do
  let(:hand) { Hand.new(["10♦", "J♥"]) }

  describe "#calculate_hand" do
    # Sample tests (change these once you understand)
    it "passes" do
      # use `expect` to test assertions
      expect(hand.calculate_hand == 20).to eq(true)
    end

    it "fails" do
      hand = Hand.new(["10♦", "J♥", "Q♥"])
      expect(hand.calculate_hand > 21).to eq true
    end

    it "wins blackjack two cards" do
      hand = Hand.new(["A♦", "Q♥"])
      expect(hand.calculate_hand == 21).to eq true
    end

    it "wins blackjack three cards" do
      hand = Hand.new(["A♦", "Q♥", "J♥"])
      expect(hand.calculate_hand == 21).to eq true
    end
  end
end
