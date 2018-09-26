class Author

  attr_accessor :name, :posts
@@all = []
def initialize(name)
@name = name
@posts = []

end

def add_post(post)
@posts << post
post.author = self
@@all << post.author
end


def add_post_by_title(post)
post = Post.new(post)
@posts << post
post.author = self
@@all << post.author

end

def self.post_count
@@all.count

end






end
