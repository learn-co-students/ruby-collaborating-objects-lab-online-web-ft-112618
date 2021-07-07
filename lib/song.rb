require 'pry'

class Song
  attr_accessor :name

  @@all = [ ]

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def artist=(artist)
    @artist = artist
  end

  def artist
    @artist
  end

  def self.new_by_filename(file_name)
    #binding.pry
    song_name = file_name.split(" - ")[1]
    artist_name = file_name.split(" - ")[0]
    #binding.pry
    artist = Artist.find_or_create_by_name(artist_name) #artist is instance of Artist model
    song = Song.new(song_name) #associate song instance with artist from split filename above
    song.artist = artist #artist is a property (instance method) of song
    artist.add_song(song)
    song
  end

  # def artist_name
  #   artist.name if artist
  # end

  def print_songs
    @@all
  end

end
