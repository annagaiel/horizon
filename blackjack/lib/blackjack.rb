#!/usr/bin/env ruby
require_relative 'deck'
require_relative 'hand'

def determine_winner(player_hand, dealer_hand)
  return "Tie" if player_hand.total_score == dealer_hand.total_score
  if player_hand.total_score > dealer_hand.total_score
    "You win!"
  else
    "Dealer win!"
  end
end

def print_dealer_cards(dealer_hand)
  dealer_cards = ''
  dealer_hand.cards.each do |card|
    dealer_cards += "Dealer was dealt #{card.print_card}\n"
  end
  dealer_cards
end

puts "Welcome to Blackjack!"
deck = Deck.new
deck.shuffle!
player_standing = false
dealer_standing = false
player_hand = Hand.new(deck.deal(2))
player_hand.cards.each do |card|
  puts "Player was dealt #{card.print_card}\n"
end
player_hand.calculate_hand
puts "Player score: #{player_hand.total_score}\n"

dealer_hand = Hand.new(deck.deal(2))

while !player_hand.bust? && !dealer_hand.bust?
  puts "Hit or stand, press (h) for Hit:"
  choice = gets.chomp.downcase
  if choice == 'h'
     card = deck.hit
     player_hand.cards << card
     puts "Player Hit\n"
     puts "Player was dealt #{card.print_card}\n"
     player_standing = false
  else
    player_standing = true
    puts "Player Stand\n"
  end

  player_hand.calculate_hand
  puts "Player score: #{player_hand.total_score}\n"

  if player_hand.bust?
    puts "Bust! You lose..."
    break
  end

  if dealer_hand.calculate_hand < 17
    puts "Dealer Hit\n"
    dealer_hand.cards << deck.hit
    dealer_standing = false
  else
    dealer_standing = true
    puts "Dealer Stand\n"
  end

  dealer_hand.calculate_hand
  puts print_dealer_cards(dealer_hand)
  puts "Dealer score: #{dealer_hand.total_score}\n"

  if dealer_hand.bust?
    puts "Dealer is Bust! You win...\n"
    break
  end

  if player_standing && dealer_standing
    puts determine_winner(player_hand, dealer_hand)
    break
  end
end

puts "Thanks for playing blackjack!"
