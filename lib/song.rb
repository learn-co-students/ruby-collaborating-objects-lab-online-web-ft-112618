class Song
  attr_accessor :name, :artist

  def initialize(name, artist = nil)
    @name = name
    @artist = artist
  end

  def self.new_by_filename(file)
    artist, title, genre, extension = file.split(/[-.]/)
    new_artist = Artist.find_or_create_by_name(artist.strip)
    song = self.new(title.strip, new_artist)
    new_artist.songs << song
    song
  end
end
