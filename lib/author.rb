class Author

  attr_accessor :name

  @@posts = []
  @@posts_count = 0

  def initialize(name)
    @name = name
    #@posts = []
  end

  def add_post(post)
    @@posts << post
    post.author = self
  end

  def add_post_by_title(post_title)
    new_post = Post.new(post_title)
    new_post.author = self
    @@posts << new_post
    #new_post
  end

  def posts
    @@posts
  end

  def self.post_count
    @@posts_count = @@posts.length
  end

end
