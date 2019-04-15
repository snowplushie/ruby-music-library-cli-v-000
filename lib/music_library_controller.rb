class MusicLibraryController
  
  def initialize(path='./db/mp3s')
    MusicImporter.new(path).import
  end
  
  def call
    input = ""
    
    while input != "exit"
    puts "Welcome to your music library!"
    puts "To list all of your songs, enter 'list songs'."
    puts "What would you like to do?"
    input = gets.strip
    
    case input
    when "list songs"
      list_songs
    end
  end
end