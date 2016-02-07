require "pry"
require_relative '../lib/blackjack'

describe Deck do
  let(:deck) { Deck.new } # creates a variable that can be used for tests

  describe "#build_deck" do
    it "builds a deck of 52 cards" do
      expect(deck.deck_cards.size).to eq 52
    end

    it "creates unique cards" do
      expect(deck.deck_cards.uniq.size).to eq 52
    end

    it "shuffles deck" do
      temp_deck = Deck.new
      expect(temp_deck.shuffle!).to_not eq deck.deck_cards
    end
  end

  describe "#deal" do
    it "removes correct number of cards" do
      start_size = deck.deck_cards.size
      finish_size = start_size - 2

      deck.deal(2)

      expect(deck.deck_cards.size).to eq finish_size
    end

    it "deals the top card in the deck" do
      correct_card = deck.deck_cards[-1]
      expect(deck.deal(1)).to eq [correct_card]
    end
  end
end
