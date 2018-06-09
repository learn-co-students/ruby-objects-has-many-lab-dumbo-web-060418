require 'pry'
class Post
  attr_accessor :title, :author
  
  @@all = []

  def initialize(title="Hello World")
    @title = title
    
    @@all << self
  end
  
  def new(name)
    @@all << self.name
  end
  
  def self.all
    @@all
  end
  
  def author_name
    if self.author
      self.author.name
    else
      nil
    end
  end  

    
    # binding.pry
end