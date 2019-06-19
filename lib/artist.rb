class Artist
  attr_accessor :name
  @@all = 0

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def songs
    @songs
  end

  def self.save
    @@all
  end
end
