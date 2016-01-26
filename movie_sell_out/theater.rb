class Theater
  def initialize(max_seats = 100)
    @number_patrons = 0
    @max_seats = max_seats
  end

  def admit!(number_of_people = 1)
    if @max_seats >=  (@number_patrons + number_of_people)
      @number_patrons += number_of_people
    else
      "Error: You are too many to fit the theater capacity!"
    end
  end

  def at_capacity?
    @max_seats ==  @number_patrons
  end

  def record_walk_outs!(number_of_walkouts = 1)
    if number_of_walkouts <= @number_patrons
      @number_patrons -= number_of_walkouts
      "#{number_of_walkouts} walks out and the number of patron is now #{@number_patrons}"
    else
      "You have fewer patrons than #{number_of_walkouts} people to walk out."
    end
  end
end

theater = Theater.new(100)
puts theater.at_capacity?
puts theater.admit!(50)
puts theater.admit!(51)
puts theater.admit!(50)
puts theater.at_capacity?
puts theater.record_walk_outs!(75)
