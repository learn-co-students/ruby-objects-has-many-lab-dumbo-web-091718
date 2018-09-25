# require 'pry'

class Artist

  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    song.artist = self
    @songs << song
  end

  def add_song_by_name(song_name)
    name = Song.new(song_name)
    # binding.pry
    @songs << name
    name.artist = self
    # binding.pry
  end
  # binding.pry

  def self.song_count
    Song.all.count
  end
end
