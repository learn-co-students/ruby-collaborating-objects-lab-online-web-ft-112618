class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name = "")
    @name = name
    @songs = []
    instance = self
    @@all << instance
  end

  def add_song(song)
    @songs << song
  end

  def songs
    @songs
  end

  def save
    instance = self
    @@all << instance
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    # finds or creates an artist by name
    instance = nil
    @@all.each do |element|
      if element.name == name
        instance = element
      end
    end
    if instance == nil
      instance = self.new
      instance.name = name
      @@all << instance
      instance
    else
      instance
    end
  end

  def print_songs
    @songs.each do |element|
      puts element.name
    end
  end

end
