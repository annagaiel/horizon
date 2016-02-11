require 'spec_helper'

describe 'Apartment' do
let(:apartment) { Apartment.new('690 Dorchester Ave AB', 'Boston', '02127', 3000, "2016/04/1", "2016/12/15") }

  describe '.new' do
    it 'exist as an Apartment' do
      expect(apartment).to be_a(Apartment)
    end

    it 'has a rent' do
      expect(apartment.rent).to eq(3000)
    end

    it 'has a starting and ending lease' do
      expect(apartment.lease_start_date).to eq(Date.parse("2016/04/1"))
      expect(apartment.lease_end_date).to eq(Date.parse("2016/12/15"))
    end

    it 'is not full after initialization' do
      expect(apartment.full?).to eq(false)
    end

    it 'can add and remove occupants' do
      apartment.add_roommate('Dan', 'Jones')
      expect(apartment.occupant_list.size).to eq(1)
      apartment.add_roommate('Sally', 'Jones')
      expect(apartment.occupant_list.size).to eq(2)
      apartment.remove_roommate('Sally', 'Jones')
      expect(apartment.occupant_list.size).to eq(1)
    end
  end
end
