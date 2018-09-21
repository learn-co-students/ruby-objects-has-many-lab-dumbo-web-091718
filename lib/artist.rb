class Artist
  attr_accessor :name

  @@all = []
  @@songs = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def add_song(song)
    song.artist = self
    @@songs << song
    @@all << song
  end

  def add_song_by_name(song)
    new_song = Song.new(song)
    new_song.artist = self
    @@songs << new_song
  end

  def songs
    @@songs
  end

  def self.all
    @@all
  end

  def self.song_count
    @@songs.count
  end
end
