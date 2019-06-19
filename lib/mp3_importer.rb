class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def list_of_filenames
    @list_of_filenames ||=Dir.glob("#{path}/*.mp3").collect{ |f| f.gsub("#{path}/", "") }
  end

  def import
    list_of_filenames.each{ |f| Song.new_by_filename(f) }
  end
end
