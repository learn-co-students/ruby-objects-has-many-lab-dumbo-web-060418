require 'pry'
class Song
  attr_accessor :name, :artist
  
  # def artist
  #   @artist
  # end
  
  # def artist=(artist)
  #   @artist = artist
  # end
  
  @@all = []

  def initialize(name="Say my name")
    @name = name
    @artist = artist
    @@all << self
  end
  
  def new(name)
    @@all << self.name
  end
  
  def self.all
    @@all
  end
  
  def artist_name
    if self.artist
      self.artist.name
    else
      nil
    end
  end
end