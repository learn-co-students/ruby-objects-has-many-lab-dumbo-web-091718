require "pry"

class Artist

attr_accessor :name, :songs
@@all = []
def initialize(name)
@name = name
@songs = []

end


def add_song(song)
@songs << song
song.artist = self
@@all << song.artist
end

def add_song_by_name(song)
 song = Song.new(song)
@songs << song
song.artist = self
@@all << song.artist

end

def self.song_count
@@all.count
end
end
