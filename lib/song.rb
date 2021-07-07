class Song

  attr_accessor :artist, :name 
  
  
  
  def initialize(name)
    @artist = artist
    @name = name
  end
  
  def self.new_by_filename(song)
    split_song = song.split(" - ")
    song_name = Song.new(split_song[1])
    new_artist = Artist.new(split_song[0])
    new_artist.add_song(song_name)
    new_artist.save
    song_name.artist = new_artist
    song_name
  end

end