class Author

  attr_accessor :name, :posts

  @@all = []

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    @posts << post
    @@all << post
    post.author = self
  end

  def add_post_by_title(title)
    title = Post.new(title)
    @posts << title
    @@all << title
    title.author = self
  end

  def self.post_count
    @@all.count
  end

end
