require('minitest/autorun')
require('minitest/reporters')
require_relative('../room.rb')
require_relative('../song.rb')
require_relative('../guest.rb')

MiniTest::Reporters.use! MiniTest::Reporters::SpecReporter.new


class TestRoom < Minitest::Test
  def setup()
  @room1 = Room.new("Room_1", 50, @playlist_room_1)
  @room2 = Room.new("Room_2", 35, @playlist_room_2)
  @room3 = Room.new("Room_3", 30, @playlist_room_3)

  @song_name1 = Song.new("You were there", "Eric Clapton", "Pilgrim", "R&B")
  @song_name2 = Song.new("Violet Hill", "Coldplay", 'Viva la Vida', "Indy")
  @song_name3 = Song.new("Everywhere", "Fleetwood Mac", "Tango in the Night", "Pop")
  @song_name4 = Song.new("Don't try so hard", "Queen", "Innuendo", "Pop")
  @song_name5 = Song.new("Fast Car", "Tracy Chapman", "Tracy Chapman Live", "R&B")
  @song_name6 = Song.new("The Sporting Life", "The Decemberists", "Picaresque", "Indy")
  @song_name6 = Song.new("Viva la Vida", "Coldplay", "Viva la Vida", "Indy")
  @song_name7 = Song.new("The Infanta", "The Decemberists", "Picaresque", "Indy")
  @song_name8 = Song.new("Spirit", "The Waterboys", "This is the Sea", "Pop")
  @song_name9 = Song.new("Circus", "Eric Clapton", "Pilgrim", "R&B")
  @song_name10 =  Song.new("Big Love", "Fleetwood Mac", "Tango in the Night", "Pop")
  @song_name11 = Song.new("Shankill Butchers", "The Decemberists", "The Crane Wife", "Indy")
  @song_name12 = Song.new("All Four Seasons", "Sting", "Mercury Falling", "Pop")
  @song_name13 = Song.new("Just Dropped In", "Kenny Rogers & The First Edition", "The First Edition", "Pop")
  @song_name14 = Song.new("Old England", "The Waterboys", "This is the Sea", "Pop")
  @song_name15 = Song.new("Delilah", "Queen", "Innuendo", "Pop")

  @playlist_room_1 = [@song_name15, @song_name14, @song_name13]
  @playlist_room_2 = [@song_name1, @song_name5, @song_name9]
  @playlist_room_3 = [@song_name2, @song_name6, @song_name7]

  @playlist_1 = Room.new("Playlist_Room_1",50, @playlist_room_1)


end

  def test_room_name
    assert_equal("Room_1", @room1.room_name)
  end

  def test_capacity
    assert_equal(50, @room1.capacity)

  end

  def test_has_playlist
    assert_equal(3, @playlist_1.playlist.count)

  end






end
