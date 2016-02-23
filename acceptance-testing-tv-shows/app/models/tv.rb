require 'csv'

class Tv
  attr_accessor :shows_list, :error

  def initialize
    @shows_list = []
    @error = nil
  end

  def read_shows
    data = CSV.readlines('television-shows.csv', :headers => true)
    if data.size != @shows_list.size
      data.size.times do |index|
        row = data[index]
        @shows_list << TelevisionShow.new(row['title'], row['network'], row['starting_year'], row['synopsis'], row['genre'])
      end
    end
    @shows_list
  end

  def add_shows(show)
    show_array = [show.title, show.network, show.starting_year, show.synopsis, show.genre]
    CSV.open("television-shows.csv", 'a') { |file| file << show_array }
  end

  def duplicate?(show_title)
    data = CSV.readlines('television-shows.csv', :headers => true)
    data.size.times do |index|
      row = data[index]
      if row['title'] == show_title
        return true
      end
    end
    false
  end

end
