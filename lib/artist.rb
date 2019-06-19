class Artist
  attr_accessor :name, :songs
  @@all = []
  def initialize(name)
    @name = name
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def self.save
    @@all
  end
end
