class Artist
attr_accessor :name, :songs

  @@all = [ ]

  def initialize(name)
    @name = name
    @songs = [ ]
    #@@all << self
  end

  def self.all
    @@all
  end

  # def songs
  #   Song.all.select { |song| song.artist == self}
  # end

  # def add_song_by_name(name)
  #   song = Song.new(name)
  #   Song.artist = self
  # end

  def self.create(name)
    artist = self.new(name)
    artist.save
    artist
  end

  def add_song(song)
    #Song.all.select { |song| song.artist == self}
    self.songs << song
    #name.artist = self
  end

  def self.find_or_create_by_name(name) #the test is trying to call an artist method
    artist = self.all.find do |artist|
      artist.name == name #artist.name is calling artist attribute
    end
      if !artist
        artist = self.create(name)
      end
    artist
    # if
      # self.artist_name = self.new(artist)
    # else
    #   self.artist.name = name
    # end
  end

  def save
    @@all << self
  end

  def print_songs
    songs.each { |song| puts song.name }
  end

  # def self.artist
  # end


end
