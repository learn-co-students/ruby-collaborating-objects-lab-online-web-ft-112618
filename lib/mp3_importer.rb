class MP3Importer
  attr_reader :path, :files

  def initialize(path)
    @path = path
    @files = Dir.entries(path).select { |filename| filename.match(/.mp3$/) }
  end

  def import
    self.files.each { |filename| Song.new_by_filename(filename) }  
  end
end
