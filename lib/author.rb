class Author

  attr_accessor :name, :posts

  @@post_count = 0

  def initialize(name)
    @name = name
    @posts = []
    @@post_count = 0
  end

  def add_post(post)
    @posts << post
    post.author = self
    @@post_count += 1
  end

  def add_post_by_title(title)
    new_title = Post.new(title)
    new_title.author = self
    @posts << new_title
  end

  def self.post_count
    Post.all.count
  end

end
