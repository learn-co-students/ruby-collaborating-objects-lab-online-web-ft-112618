# class Artist
#   attr_accessor :name, :song
#   attr_reader :songs
#
#   @@all = []
#
#   def initialize(name)
#     @name = name
#     @songs = []
#   end
#
#   def self.all
#     @@all
#   end
#
#   def add_song(song)
#     @songs << song
#   end
#
#   def save
#     @@all << self
#   end
#
#   def self.find_artist(artist)
#     self.all.find {|artist_obj| artist == artist_obj.name}
#     #binding.pry
#   end
#
#   def self.find_or_create_by_name(artist)
#
#     # self.find_artist(artist) ? self.find_artist(artist) : Artist.new(artist)
#     if
#     self.all.find {|artist_obj|
#       artist_obj.name == artist} != nil
#       self.all.find {|artist_obj|
#         artist_obj.name == artist}
#       else
#         Artist.new(artist)
#     end
#   end
#
#   def print_songs
#     self.songs.each {|song| puts song.name}
#   end
# end

class Artist
  attr_accessor :name, :song
  attr_reader :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def self.all
    @@all
  end

  def add_song(song)
    @songs << song
  end

  def self.create(name)
  new_artist = self.new(name)
  new_artist.save
  new_artist
  end

  def save
    @@all << self
  end

  def self.find_artist(artist)
    self.all.find {|artist_obj| artist == artist_obj.name}
  end

  def self.find_or_create_by_name(artist)

    # self.find_artist(artist) ? self.find_artist(artist) : Artist.create(artist)
    if
    self.all.find {|artist_obj|
      artist_obj.name == artist} != nil
      self.all.find {|artist_obj|
        artist_obj.name == artist}
      else
        Artist.create(artist)
    end
  end

  def print_songs
    self.songs.each {|song| puts song.name}
  end
end
