class Post

  attr_accessor :title, :author

  @@all = Array.new

  def initialize(title)
    @title = title
    @@all << self
  end

  def self.all
    return @@all
  end

  def author_name
    unless author == nil
      return @author.name
    else
      return nil
    end
  end
end
