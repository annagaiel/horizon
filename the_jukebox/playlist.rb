class Playlist

  attr_reader :play_list
  def initialize(play_list = [ {title:"Agadoo", artist:"Black Lace"}])
    @song_list = [
        {title:"Hello", artist:"Lionel Ritchie"},
        {title:"Kokomo", artist:"The Beach Boys"},
        {title:"Girl You Know It’s True", artist:"Milli Vanilli"},
        {title:"Agadoo", artist:"Black Lace"},
        {title:"Down Under", artist:"Men at Work"},
        {title:"Nothing's Gonna Stop Us Now", artist:"Starship"},
        {title:"Get Outta My Dreams, Get Into My Car", artist:"Billy Ocean"},
        {title:"I Just Called To Say I Love You", artist:"Stevie Wonder"},
        {title:"Hangin' Tough", artist:"New Kids on the Block"},
        {title:"We Built This City", artist:"Starship"},
        {title:"Wake Me Up Before You Go Go", artist:"Wham!"},
        {title:"We Didn't Start The Fire", artist:"Billy Joel"},
        {title:"I Wanna Dance With Somebody", artist:"Whitney Houston"},
        {title:"U Can't Touch This", artist:"MC Hammer"}
    ]
    @play_list = []
    @song_list.each do |song|
      play_list.each do |music|
        if song[:title] == music[:title] && song[:artist] == music[:artist]
          @play_list << song
        end
      end
    end
  end

  def shuffle!
    @play_list.shuffle!
    "Your playlist was shuffled."
  end

  def play!
    song = @play_list.shift
    "#{song[:title]} is playing."
  end

  def add_track(track_name)
    len = @play_list.length
    @song_list.each do |song|
        if song[:title] == track_name
            @play_list.push(song)
            return true
        end
    end
    len == @play_list.length ? "#{track_name} was not added" : "#{track_name} was added."
  end
end

playlist = Playlist.new([{title:"Agadoo", artist:"Black Lace"},{title:"Hello", artist:"Lionel Ritchie"},
            {title:"Kokomo", artist:"The Beach Boys"},{title:"Lalala", artist:"Bumble Bee"}])
puts playlist.play_list
puts playlist.shuffle!
puts playlist.play!
puts playlist.add_track("U Can't Touch This")
puts playlist.play_list
