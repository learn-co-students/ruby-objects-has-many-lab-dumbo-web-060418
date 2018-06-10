class Artist

    attr_accessor :name

    @@all = []

    def self.all
      @@all
    end

    def initialize(name)
       @name = name
       @@all << self
    end

    def songs
      Song.all.select {|song| song.artist == self}
    end

    #takes in an argument of a song and associates that song with the artist
    def add_song(song)
      song.artist = self
    end

    #takes in an argument of a song name, creates a new song with it
    #and associates the song and artist
    def add_song_by_name(song_name)
      song = Song.new(song_name)
      Song.all << song
      song.artist = self
    end

    #returns the total number of songs associated to all existing artists
    def self.song_count
      Song.all.count
    end

end
