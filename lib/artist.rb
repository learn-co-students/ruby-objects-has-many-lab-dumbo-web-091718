require 'pry'
class Artist

  attr_accessor :name, :songs

  @@songs_count = 0

  ### CLASS METHODS ###
  def self.song_count
    @@songs_count
  end


  ### CLASS INSTANCE METHODS ###

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    self.songs << song
    song.artist= self
    @@songs_count += 1
  end

  def add_song_by_name(song)
    song = Song.new(song)
    self.songs << song
    song.artist= self
    @@songs_count +=1
  end


end
