class Song

  attr_accessor :name, :artist

  @@all = []

  ### CLASS METHODS ###
  def self.all
    @@all
  end

  ###CLASS INSTANCE METHODS ###
  def initialize(song)
    @name = song
    @artist = nil
    @@all << self
  end

  def artist_name
    if @artist == nil
      return nil
    else
      return @artist.name
    end
  end

end
