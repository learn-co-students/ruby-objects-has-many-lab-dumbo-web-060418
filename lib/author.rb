class Author

#Sets class instance variable to empty array
  @@all = []

#Allows class instance to be read publicly
  def self.all
    @@all
  end

  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def posts
    Post.all.select {|post| post.author == self}
  end

  def add_post(post)
    post.author = self
  end

  def add_post_by_title(title)
    post = Post.new(title)
    Post.all << post
    post.author = self
  end

  def self.post_count
     Post.all.count
  end

end
