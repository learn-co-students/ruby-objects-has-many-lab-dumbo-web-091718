class Author

  attr_accessor :name, :posts

  def initialize(name)
    @name = name
    @posts = []
  end


  def add_post(new_post)
    n_post = new_post
    # binding.pry
    n_post.author = self
    @posts << n_post
  end

  def add_post_by_title(add_post)
    n_post = Post.new(add_post)
    n_post.author = self
    @posts << n_post
  end

  def self.post_count
    post_after = Post.all.count
  end
end
