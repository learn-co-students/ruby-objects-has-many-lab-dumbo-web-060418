class Author
  attr_accessor :name, :posts

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    self.posts << post
    post.author = self
  end

  def add_post_by_title(title)
    a_post = Post.new(title)
    self.add_post(a_post)
  end

  def self.post_count
    Post.all.count
  end
end
