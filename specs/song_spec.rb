require('Minitest/autorun')
require('minitest/reporters')
require_relative('../song.rb')
require_relative('../room.rb')
require_relative('../guest.rb')

MiniTest::Reporters.use! MiniTest::Reporters::SpecReporter.new


class TestSong < Minitest::Test

  def setup()

    @song_name1 = Song.new("You were there", "Eric Clapton", "Pilgrim", "R&B")


  end

  def test_song_name
    assert_equal("You were there", @song_name1.song_name())
  end

  def test_band
    assert_equal("Eric Clapton", @song_name1.band())
  end

  def test_album
    assert_equal("Pilgrim", @song_name1.album())

  end
  def test_genre
    assert_equal("R&B", @song_name1.genre())

  end
  

end
