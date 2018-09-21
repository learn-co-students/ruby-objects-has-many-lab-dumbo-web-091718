class Author
  attr_reader :name

  @@all = []
  @@posts = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def posts
    @@posts
  end

  def add_post(post)
    post.author = self
    @@posts << post
    @@all << post
  end

  def add_post_by_title(post)
    new_post = Post.new(post)
    new_post.author = self
    @@posts << new_post
  end

  def self.post_count
    @@posts.count
  end
end
