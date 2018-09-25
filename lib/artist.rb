require 'pry'
class Artist

  attr_accessor :name, :songs

  @@all = []
  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def add_song(song)
    singlesong = song
    singlesong.artist = self
    @songs << singlesong


  end

  def self.all
    @@all
  end

  def add_song_by_name(song_name)

    song = Song.new(song_name)
    song.artist = self
    @songs << song
    # binding.pry
    # 0
  end

def self.song_count

  song_num = Song.all.count

  # binding.pry
  # 0
end




end
