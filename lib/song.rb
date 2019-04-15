class Song
  attr_accessor :name, :artist, :genre
  @@all = []
  
  def initialize(name, artist = nil)
    @name = name
    self.artist = artist if artist
  end
  
  def artist=(artist)
    @artist = artist
    artist.add_song(self)
  end
  
  def self.all
    @@all
  end
  
  def self.destroy_all
    all.clear
  end
  
  def save
    self.class.all << self
  end
  
  def self.create(name)
    song = new(name)
    song.save
    song
  end
end