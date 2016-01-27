require 'time'

class Movie

  def initialize(title, genre, time)
    @title = title
    @genre = genre
    @time  = Time.parse(time)
  end

  def comedy?
    @genre == "Comedy"
  end

  def showing_after?(time)
    Time.parse(time) <= @time
  end

  def showing_between?(time_start, time_end)
    time_start = Time.parse(time_start)
    time_end = Time.parse(time_end)
    @time >= time_start && @time <= time_end
  end
end

movie = Movie.new('The Princess Bride', 'Comedy', '7:00PM')
puts movie.showing_after?("9:13PM")
puts movie.showing_between?("6:13PM", "9:00PM")
puts movie.comedy?
