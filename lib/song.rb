class Song

  attr_accessor :artist, :name

  @@all = Array.new

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    return @@all
  end

  def artist_name
    unless @artist == nil
      return @artist.name
    else
      return nil
    end
  end

end
