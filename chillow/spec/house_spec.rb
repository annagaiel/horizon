require 'spec_helper'

describe 'House' do
let(:house) { House.new('80 Allston St', 'Boston', '02134', 400000) }

  describe '.new' do
    it 'exist as a House' do
      expect(house).to be_a(House)
    end

    it 'has a asking_price' do
      expect(house.asking_price).to eq(400000)
    end
  end
end
