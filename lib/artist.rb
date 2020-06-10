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
    new_array = []
    Song.all.each do |song|
      if song.artist.name == self.name
        new_array << song
      end
    end
  end

  def self.find_or_create_by_name(name)
    @@all.each do |artist|
      if artist.name == name
        return artist
      else
        self.new(name)
      end
    end
  end
end
