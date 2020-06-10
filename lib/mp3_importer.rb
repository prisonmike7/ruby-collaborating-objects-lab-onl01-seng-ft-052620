class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
  end


  def files()

  end

  def import(path)
    Dir.foreach ("./spec/fixtures/mp3s") do |file|
      Song.new_by_filename(file.basename)
    end


    Song.new_by_filename(some_filename)
  end
end
