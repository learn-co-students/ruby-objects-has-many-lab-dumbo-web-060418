class Author

  attr_accessor :name, :posts

@@all = []
  def initialize(name)
    @name = name
    @posts = []
    @@all << self
  end

  def add_post(post)
    post.author = self
    self.posts << post

  end



  def add_post_by_title(post_title)
    post = Post.new(post_title)
    post.author = self
    self.posts << post
  end

  def self.post_count
    post_count = 0
    @@all.each do |author|
      post_count += author.posts.count
    end
    post_count
  end






end
