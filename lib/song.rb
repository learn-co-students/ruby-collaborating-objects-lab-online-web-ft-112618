require"pry"

 class Song 
   attr_accessor :name, :artist
   
   @@all = []
   
   def initialize(name)
     @name = name
     @@all << self
   end 

   def self.all
     @@all
   end 

   def self.new_by_filename(file_name)
     parsed = file_name.split(" - ")
     song = self.new(parsed[1])
     artist = parsed[0]
     song.artist = Artist.find_or_create_by_name(artist)
     song.artist.add_song(song)
     
     #song.artist_name = artist                           #added by lesson help
     
     song
   end 
   
   # def artist_name=(name)                           #added by lesson help
   #   artist = Artist.find_or_create_by_name(name)
   #   artist.add_song(self)
   #   artist
   # end 
 end 