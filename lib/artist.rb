class Artist
attr_accessor :name
@@all=[]
def initialize(name)
  @name=name
  @@all<<self
end
def add_song(song)
  @songs<<song
  song.artist=self
end
def add_song_by_name(name, genre)
song=Song.new(name, genre)
@songs=song
song.artist=self
end
def songs
  @songs
end

end
