class Song
  attr_accessor :name, :artist, :genre
  @@all = []
  
  def initialize
    @@all << self
  end