class Artist
  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @@all = []
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
