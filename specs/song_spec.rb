require('Minitest/autorun')
require('minitest/reporters')
require_relative('../song.rb')
require_relative('../room.rb')
require_relative('../guest.rb')

MiniTest::Reporters.use! MiniTest::Reporters::SpecReporter.new


class TestSong < Minitest::Test

  def setup()

    @song_name1 = Song.new("Wonderful Tonight", "Eric Clapton", "Pilgrim")
    @song_name2 = Song.new("Violet Hill", "Coldplay", 'Viva la Vida')
    @song_name3 = Song.new("Everywhere", "Fleetwood Mac", "Tango in the Night")
    @song_name4 = Song.new("Don't try so hard", "Queen", "Innuendo")
    @song_name5 = Song.new("Fast Car", "Tracy Chapman", "Tracy Chapman Live")
    song_name6 = Song.new("The Sporting Life", "The Decemberists", "Picaresque")

    @playlist = [@song_name1, @song_name2, @song_name3, @song_name4, @song_name5, @song_name6]

  end

  def test_song_name
    assert_equal("Violet Hill", @song_name2.song_name)
  end

  def test_band
    assert_equal("Eric Clapton", @song_name1.band)

  end

  def test_album
    assert_equal("Innuendo", @song_name4.album)

  end
end
