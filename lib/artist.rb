require 'pry'

class Artist

	attr_accessor :name, :songs, :song


	def initialize(name)
		@name = name
		@songs = []
	end

	def add_song(song)
		song.artist = self
		@songs << song
	end

	def add_song_by_name(song_name)
		the_song = Song.new(song_name)
		add_song(the_song)
	end

	def self.song_count
		Song.all.length
	end



end
