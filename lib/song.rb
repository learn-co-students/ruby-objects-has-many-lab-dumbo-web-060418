require 'pry'

class Song

  attr_accessor :name, :artist #this takes the place of me having to create a reader/writer method

  #creates class variable & sets it to an empty array
  @@all = []

  #lets all array become readable
  def self.all
     @@all
  end

  #initializes song class with name argument & pushes instance into all array
  def initialize(name)
     @name = name
     @@all << self
  end

  #shows that song knows the name of it's artist
  def artist_name
     if self.artist
       self.artist.name
     else
       nil
     end
  end

end

#Pry.start
