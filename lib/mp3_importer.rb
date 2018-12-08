
require 'pry'

class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
    # need a list of files from directory without .mp3
  end

  def files
    Dir.glob("#{path}/*").map do |file|
      file.gsub("./spec/fixtures/mp3s/", "")
    end
    #binding.pry
  end

# imports the files into the library by creating songs from a filename (FAILED - 1)

  def import
    self.files.each do |file|
      Song.new_by_filename
    end
  end



end
