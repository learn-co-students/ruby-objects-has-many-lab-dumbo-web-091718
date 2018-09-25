require 'pry'
class Artist

  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = Array.new
  end

  def add_song(song)
    song.artist = self
    @songs << song
  end

  def add_song_by_name(song_by_name)
    song = Song.new(song_by_name)
    song.artist = self
    @songs << song
  end

  def self.song_count
    return Song.all.count
  end

end
