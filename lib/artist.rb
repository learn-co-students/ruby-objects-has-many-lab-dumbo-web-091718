class Artist

  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    @@all << song
    song.artist = self

  end

  def add_song_by_name(title)
    title = Song.new(title)
    @songs << title
    @@all << title
    title.artist = self
  end


  def self.song_count
    @@all.count
  end

end
