require"pry"

class Song 
  attr_accessor :name, :artist
  
  def initialize(name)
    @name = name
  end 
  
  def self.new_by_filename(file_name)
    parsed = file_name.split(" - ")
    song = self.new(parsed[1])
    artist = parsed[0]
    song.artist_name = artist
    song
    #binding.pry
  end 
  
  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end 
end