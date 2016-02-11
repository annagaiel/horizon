require 'Date'
require_relative 'occupant'
require_relative 'dwelling'

class Apartment
  attr_reader :rent, :lease_start_date, :lease_end_date, :occupant_list
  include Dwelling

  def initialize(address, city_or_town, zip_code, rent, lease_start_date, lease_end_date)
    @address = address
    @city_or_town = city_or_town
    @zip_code = zip_code
    @rent = rent
    @lease_start_date = Date.parse(lease_start_date)
    @lease_end_date = Date.parse(lease_end_date)
    @occupant_capacity = 10
    @occupant_list = []
  end

  def full?
    @occupant_capacity == @occupant_list.size
  end

  def add_roommate(first_name, last_name)
    new_occupant = Occupant.new(first_name, last_name)
    @occupant_list << new_occupant
  end

  def remove_roommate(first_name, last_name)
    index = @occupant_list.find_index {|occupant| occupant.first_name == first_name && occupant.last_name == last_name}
    @occupant_list.delete(@occupant_list[index])
  end
end
