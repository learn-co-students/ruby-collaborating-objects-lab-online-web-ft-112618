class Song
  attr_accessor :name, :artist_name

  @@all = [ ]

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  # def artist_name
  #   artist.name if artist
  # end

  def print_songs
    @@all
  end

end
