class MusicLibraryController
  
  def initialize(path='./db/mp3s')
    MusicImporter.new(path).import
  end
  
  def call
    input = ""
    
    while input != "exit"
    puts "Welcome to your music library!"
    puts "What would you like to do?"
    input = gets.strip
  end
end
end