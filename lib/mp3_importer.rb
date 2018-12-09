require"pry"

class MP3Importer
  attr_accessor :path
  
  def initialize(path)
    @path = path
  end
  
  def files
    @all_songs = Dir.entries(path).each {|file|}
    #binding.pry
    @all_songs = @all_songs.sort[2..-1]
      
  end 
  
  def import
    files.each do |file|
      Song.new_by_filename(file)
      #binding.pry
    end
  end 
end