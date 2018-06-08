class Artist
attr_accessor :name

def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def add_song(new_song)
    @songs << new_song
    new_song.artist = self
  end

  def add_song_by_name(song_name)
    a_song = Song.new(song_name)
    self.add_song(a_song)
  end

  def self.song_count
    Song.all.length
  end
end
