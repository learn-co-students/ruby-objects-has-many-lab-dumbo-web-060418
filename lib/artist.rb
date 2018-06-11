
require 'pry'
class Artist

attr_accessor :name, :songs

@@all = []

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end



  def add_song(song)
     song.artist = self
     self.songs << song
  end

  def add_song_by_name(song_name)
    song = Song.new(song_name)
    self.add_song(song)
  end

  def self.song_count
    song_count = 0
    @@all.each do |artist|
      song_count += artist.songs.count
    end
    song_count
  end










end
