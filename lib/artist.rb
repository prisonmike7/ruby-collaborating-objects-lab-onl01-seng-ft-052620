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
      new_array << song if song.artist.name == self.name
    end
  end

end
end
