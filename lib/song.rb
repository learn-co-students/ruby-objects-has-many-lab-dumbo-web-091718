class Song
  attr_reader :name
  attr_accessor :artist
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def artist_name
    return self.artist ? self.artist.name : nil
  end
end
