class Song
  attr_accessor :artist, :name

  @@all = []

  def initialize(name = "")
    @name = name
  end

  def self.new_by_filename(filename)
    song = self.new
    song.name = filename.split(" - ")[1]
    song.artist = Artist.new(filename.split(" - ")[0])
    song.artist.add_song(filename.split(" - ")[1])
    @@all << song

    song
  end

end
