class Song
  attr_accessor :name, :artist, :genre
  @@all = []
  
  def initialize(name)
    @name = name
  end
  
  def self.all
    @@all
  end
  
  def self.destory_all
    all.clear
  end
end