class Artist

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def add_song(song)
    song.artist = self
  end

  def songs
    Song.all.each do |song|
      if song.artist.name
    end
  end

  def self.find_or_create_by_name(name)
    @@all.each do |artist|
      if artist.name == self.name
        @@all << self
        return artist
      else
        self.new(name)
      end
    end
  end
end
