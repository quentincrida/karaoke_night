class Song

  attr_reader :song_name, :band, :album, :genre


  def initialize(song_name, band, album, genre)

    @song_name = song_name
    @band = band
    @album = album
    @genre = genre

  end


end
