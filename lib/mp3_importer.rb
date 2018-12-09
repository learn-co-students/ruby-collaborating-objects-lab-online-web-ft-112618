require"pry"

class MP3Importer
  attr_accessor :path
  
  def initialize(path)
    @path = path
  end
  
  def files
    @all_songs = Dir.entries(path).each {|file|}
    @all_songs = @all_songs.sort[2..-1]
  
    #Dir.entries(@path).select {|file| file.include?(".mp3")}      #added by lesson help
  end 
  
  def import
    files.each do |file|
      Song.new_by_filename(file)
    end
  end 
end