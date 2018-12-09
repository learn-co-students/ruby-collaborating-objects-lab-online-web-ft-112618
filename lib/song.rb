class Song
  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    @name = name
  end

  def self.all
    @@all
  end

  def self.new_by_filename(filename)
    new_song = Song.new(filename.split(" - ")[1])
    new_song.save

    new_song.artist = Artist.find_or_create_by_name(filename.split(" - ")[0])
    new_song.artist.add_song(self)
    new_song
    #binding.pry
  end

  def save
    @@all << self
    self
  end

end
