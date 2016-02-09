require_relative 'cage'
require_relative 'employee'
class ZooAtCapacity < StandardError
end
class Zoo
  attr_reader :season_opening_date, :season_closing_date, :cages, :employees
  def initialize(name, season_opening_date, season_closing_date)
    @name = name
    @season_opening_date = season_opening_date
    @season_closing_date = season_closing_date
    @cages = []
    10.times do
      @cages << Cage.new
    end
    @employees = []
  end

  def add_employee(employee)
    employees << employee
  end

  def open?(date)
    date >= season_opening_date && date < season_closing_date
  end

  def add_animal(animal)
    reached_capacity = true
    cages.each do |cage|
      if cage.empty?
        cage.animal = animal
        reached_capacity = false
        break
      end
    end
    raise ZooAtCapacity if reached_capacity
  end

  def visit
    noise = ''
    employees.each do |employee|
      noise += employee.greet + "\n"
    end
    cages.each do |cage|
      if !cage.empty?
        noise += cage.animal.speak + "\n"
      end
    end
    noise
  end

end
