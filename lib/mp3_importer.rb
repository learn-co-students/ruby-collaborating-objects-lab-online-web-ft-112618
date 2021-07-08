class MP3Importer
  attr_accessor :path, :files

  def initialize(pathname = "")
    @path = pathname
    Dir.open @path do |dir|
      @files = dir.entries.delete_if{|element|
        !element.include? ".mp3"}
    end
  end

  def import
    @files.each do |element|
      Song.new_by_filename(element)
    end
  end
end
