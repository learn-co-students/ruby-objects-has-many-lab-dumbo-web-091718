require 'pry'

class Post

  attr_accessor :title, :author
  @@all = []

  def self.all
    @@all
  end

  def initialize(title)
    @title = title
    @author
    @@all << self
  end

  def author_name
    if @author == nil
      nil
    else
      @author.name
    end
  end

end
