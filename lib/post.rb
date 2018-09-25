class Post

attr_accessor :name, :author

@@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  def title
    @title
  end

  def self.all
    @@all
  end

  def author_name
    if self.author
      return self.author.name
    else
      nil
    end
end

end
