require 'spec_helper'
require_relative '../lib/player'

describe Player do
  it 'has o token character' do
    o_player = Player.new('o')
    expect(o_player.character).to eq('o')
  end

  it 'has x token character' do
    x_player = Player.new('x')
    expect(x_player.character).to eq('x')
  end

end
