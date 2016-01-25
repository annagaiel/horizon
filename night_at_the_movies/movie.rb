require 'time'

class Movie

  def initialize(show_to_watch = "The Princess Bride")
    @playing_list = [
      {title:'The Princess Bride', genre:'Comedy', time:Time.parse('7:00PM')},
      {title:'Troll 2', genre:'Horror', time:Time.parse('7:30PM')},
      {title:'Pet Cemetery', genre:'Horror', time:Time.parse('8:15PM')},
      {title:'Flight of the Navigator', genre:'Adventure', time:Time.parse('8:17PM')},
      {title:'Teen Witch', genre:'Comedy', time:Time.parse('8:20PM')},
      {title:'The Goonies', genre:'Comedy', time:Time.parse('8:30PM')},
      {title:'Better Off Dead', genre:'Comedy', time:Time.parse('8:45PM')},
      {title:'Weekend at Bernies', genre:'Comedy', time:Time.parse('9:00PM')},
      {title:'The Wizard', genre:'Adventure', time:Time.parse('9:10PM')}
    ]
    @show_to_watch = @playing_list.select {|item| item[:title] == show_to_watch}
  end

  def comedy?
    @show_to_watch.first[:genre] == "Comedy"
  end

  def showing_after?(time_after)
    time_after = Time.parse(time_after)
    @show_to_watch.first[:time] >= time_after
  end

  def showing_between?(time_start, time_end)
    time_start = Time.parse(time_start)
    time_end = Time.parse(time_end)
    @show_to_watch.first[:time] >= time_start && @show_to_watch.first[:time] <= time_end
  end
end

movie = Movie.new("Weekend at Bernies")
puts movie.showing_after?("9:13PM")
puts movie.showing_between?("6:13PM", "9:00PM")
puts movie.comedy?
