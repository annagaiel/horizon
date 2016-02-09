require 'spec_helper'
require_relative '../lib/player'

RSpec.describe Player do
  let(:player) { Player.new('o',"Emily") }

  describe 'player' do
    it 'can read his name' do
      expect(player.name).to eq("Emily")
    end
  end

end
