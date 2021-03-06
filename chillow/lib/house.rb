require_relative 'dwelling'

class House
  attr_reader :asking_price
  include Dwelling

  def initialize(address, city_or_town, zip_code, asking_price)
    @address = address
    @city_or_town = city_or_town
    @zip_code = zip_code
    @asking_price = asking_price
  end

end
