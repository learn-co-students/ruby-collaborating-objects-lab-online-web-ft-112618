require 'pry'

class MP3Importer
  attr_accessor :path, :files, :import

  def initialize(file_path)
    @path = file_path
  end

  def files
   @files = Dir.glob("#{path}/*.mp3").collect{|f| f.gsub("#{path}/", "")}
  end

  def import
    #binding.pry
    self.files.map {|f| Song.new_by_filename(f)}
  end
end
