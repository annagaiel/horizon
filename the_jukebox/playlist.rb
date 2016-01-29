class Playlist

  attr_reader :play_list

  SONGS = ['Hello - Lionel Ritchie', 'Kokomo - The Beach Boys', "Girl You Know It’s True – Milli Vanilli",
    'Agadoo - Black Lace', 'Down Under - Men at Work', "Nothing's Gonna Stop Us Now - Starship",
    'Get Outta My Dreams, Get Into My Car - Billy Ocean', 'I Just Called To Say I Love You - Stevie Wonder',
    "Hangin' Tough - New Kids on the Block", 'We Built This City - Starship',
    'Wake Me Up Before You Go Go - Wham!', "We Didn't Start The Fire - Billy Joel",
    'I Wanna Dance With Somebody - Whitney Houston', "U Can't Touch This - MC Hammer"]

  def initialize(play_list)
    @play_list = play_list.select{|item| item if SONGS.include?(item)}
  end

  def shuffle!
    @play_list.shuffle!
    "Your playlist was shuffled."
  end

  def play!
    song = @play_list.shift
    "#{song} is playing."
  end

  def add_track(track_name)
    len = @play_list.length
    if SONGS.include?(track_name) && !@play_list.include?(track_name)
      @play_list.push(track_name)
    end
    len == @play_list.length ? "#{track_name} was not added" : "#{track_name} was added."
  end
end

playlist = Playlist.new(["Agadoo - Black Lace", "Hello - Lionel Ritchie",
                    "Kokomo - The Beach Boys", "Lalala - Bumble Bee"])
puts playlist.play_list.join(', ')
puts playlist.shuffle!
puts playlist.play!
puts playlist.add_track("U Can't Touch This - MC Hammer")
puts playlist.play_list.join(', ')
