require 'pry'
class Artist

  attr_accessor :name, :songs
  attr_reader  :artist

  def initialize(name)
    @name = name
    @songs = Array.new
  end

  def add_song(song)
    song.artist = self
    @songs << song
  end

  def add_song_by_name(song_by_name)
    add_song(song_by_name)
    song_by_name.artist = self
  end

end
