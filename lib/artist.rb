require"pry"

class Artist 
  attr_accessor :name, :songs
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
  end 
  
  def add_song(song)
    @songs << song
  end 
  
  def save 
    @@all << self
  end
  
  def self.all
    @@all
    #binding.pry
  end 
  
  def self.find_or_create_by_name(name)
    existing_artist = self.all.find { |artist| artist.name == name }
      if existing_artist
        existing_artist
      else
        name = Artist.new(name)
        #binding.pry
        name.save
        name
      end 
  end 
  
  def print_songs
     songs.each {|x| puts x.name}
  end 
end  