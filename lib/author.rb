require 'pry'

class Author

  attr_accessor :name, :posts
  @@count = 0

  def initialize(name)
    @name = name
    @posts = []
  end

  def posts
    @posts
  end

  def add_post(post)
    @posts << post
    # binding.pry
    post.author = self
    @posts.join
    @@count += 1
  end

  def add_post_by_title(post)
    new_post = Post.new(post) # <Song:... @name = "title">
    # binding.pry
    new_post.author = self
    @posts << new_post
    @@count += 1
  end

  def self.post_count
    @@count
  end

end
