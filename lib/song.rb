require 'pry'
class Song

  attr_accessor :name, :artist
  @@all = []

  def initialize(name)
    @name = name

    @@all << self
  end

  def self.all
    @@all
  end

  def artist_name
    # binding.pry
    # self.all.each do | name_check |
    #   binding.pry
    #   # if  artist== nil
    #   #   return nil
    #   # end
    # end
    if @artist
      return @artist.name
    else
      return nil
    end
    # binding.pry
  end

end
