require 'spec_helper'

describe 'House Dwelling' do
  let!(:dwelling) { House.new('80 Allston St', 'Boston', '02134', 400000) }
  it 'has an address' do
    expect(dwelling.address).to eq('80 Allston St')
  end

  it 'has an city_or_town' do
    expect(dwelling.city_or_town).to eq('Boston')
  end

  it 'has a state' do
    expect(dwelling.state).to eq('MA')
  end

  it 'has a zip_code' do
    expect(dwelling.zip_code).to eq('02134')
  end

end

describe 'Appartment Dwelling' do
  let!(:appartment_dwelling) { Apartment.new('690 Dorchester Ave AB', 'Boston', '02127', 3000, "2016/04/1", "2016/12/15") }

  it 'has an address' do
    expect(appartment_dwelling.address).to eq('690 Dorchester Ave AB')
  end

  it 'has an city_or_town' do
    expect(appartment_dwelling.city_or_town).to eq('Boston')
  end

  it 'has a state' do
    expect(appartment_dwelling.state).to eq('MA')
  end

  it 'has a zip_code' do
    expect(appartment_dwelling.zip_code).to eq('02127')
  end
end
