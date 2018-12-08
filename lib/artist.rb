require "pry"
class Artist

  attr_accessor :name, :songs   # need songs here
  @@all = []

  def initialize(name)
    @name = name
    @songs = []

  end

  def add_song(song)  #not (song_name)
    # song = Song.new(song_name)
    # song.artist = self
    self.songs << song
  end

  def save  # instruction want to get @@all
    @@all << self
  end

  def self.all
    @@all
  end

#Creates new instance or return the found Artist instance
  def self.find_or_create_by_name(name)

    artist_found = Artist.all.find do |artist|
      artist.name == name
      #artist no need it , which might return an array.
      #binding.pry
    end

    if artist_found == nil
      artist_new = Artist.new(name)
      artist_new.save
      artist_new
    else
      artist_found
    end
  end

  def print_songs
    self.songs.each do |song|
      puts "#{song.name}"
    end
  end


end # end of class Artist
