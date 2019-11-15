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
    @song_name6 = Song.new("Viva la Vida", "Coldplay", "Viva la Vida")
    @song_name7 = Song.new("The Infanta", "The Decemberists", "Picaresque")
    @song_name8 = Song.new("Spirit", "The Waterboys", "This is the Sea")
    @song_name9 = Song.new("Circus", "Eric Clapton", "Pilgrim")
    @song_name10 =  Song.new("Big Love", "Fleetwood Mac", "Tango in the Night")
    @song_name11 = Song.new("Shankill Butchers", "The Decemberists", "The Crane Wife")
    @song_name12 = Song.new("All Four Seasons", "Sting", "Mercury Falling")
    @song_name13 = Song.new("Just Dropped In", "Kenny Rogers & The First Edition", "The First Edition")
    @song_name14 = Song.new("Old England", "The Waterboys", "This is the Sea")
    @song_name15 = Song.new("Delilah", "Queen", "Innuendo")

    @playlist1 = [@song_name1, @song_name2, @song_name3,      @song_name4, @song_name5, @song_name6]

    @playlist2 = [@song_name6, @song_name7, @song_name8, @song_name8, @song_name9, @song_name10]

    @playlist3 = [@song_name11, @song_name12, @song_name13, @song_name14, @song_name15]

  end

  def test_song_name
    assert_equal("Delilah", @song_name15.song_name())
  end

  def test_band
    assert_equal("Eric Clapton", @song_name1.band())
  end

  def test_album
    assert_equal("Innuendo", @song_name4.album())

  end
end
