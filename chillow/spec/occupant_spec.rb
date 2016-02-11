require 'spec_helper'

RSpec.describe Occupant do
let(:occupant) { Occupant.new("Lily", "Jane")}

  describe '.new' do
    it 'can take first_name and last_name as arguments' do
      expect(occupant).to be_a(Occupant)
      expect(occupant.first_name).to eq("Lily")
      expect(occupant.last_name).to eq("Jane")
    end
  end
end
