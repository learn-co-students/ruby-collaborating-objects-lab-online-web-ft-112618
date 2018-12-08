require 'pry'
class Song
  attr_accessor :name, :artist
  @@all = []
  def initialize(name)
    @name = name
  end

  def save
    @@all << self
  end

#Song .new_by_filename associates new song instance with the artist from the filename
  def self.new_by_filename(filename)

    artist = filename.split(" - ")[0]
    song = filename.split(" - ")[1]
    new_song = self.new(song)
    new_artist = Artist.find_or_create_by_name(artist)
    new_song.artist = new_artist
    new_artist.add_song(new_song)
    new_song

  end

# only work half way. 
 #  def self.new_by_filename(file_name)
 #    new_song = Song.new(file_name.split(/\s-\s/)[1])
 #    #new_song.artist = file_name.split(/\s-\s/)[0]
 #    self.artist = Artist.find_or_create_by_name(file_name.split(/\s-\s/)[0])
 #    new_song
 # #binding.pry
 #  end

end
