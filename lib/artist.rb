require 'pry'

class Artist

  attr_accessor :name

  @@songs = []
  @@songs_count = 0

  def initialize(name)
    @name = name
    #@songs = []
  end

  def add_song(song)
    # new_song = Song.new(song)
    #
    # @songs << new_song
    # new_song
    @@songs << song
    song.artist = self

  end

  def songs
    @@songs
  end

  def add_song_by_name(song_name)
    song = Song.new(song_name)
    song.artist = self
    @@songs << song

  end

  def self.song_count
    @@songs_count = @@songs.length
    
  end

end
