require 'pry'

class Artist

  attr_accessor :name, :songs
  @@count = 0

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def add_song(title)
    @songs << title
    title.artist = self
    # binding.pry
    @@count += 1
  end

  def add_song_by_name(title)
    song = Song.new(title) # <Song:... @name = "title">
    # binding.pry
    song.artist = self
    @songs << song
    @@count += 1
  end

  def self.song_count
    @@count
  end

end
