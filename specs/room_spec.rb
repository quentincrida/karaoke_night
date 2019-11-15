require('minitest/autorun')
require('minitest/reporters')
require_relative('../room.rb')
require_relative('../song.rb')
require_relative('../guest.rb')

MiniTest::Reporters.use! MiniTest::Reporters::SpecReporter.new


class TestRoom < Minitest::Test
  def setup()
  @room1 = Room.new("The Sturgeon", 50)
  @room2 = Room.new("The Ballast", 35)
  @room3 = Room.new("Purple Haze", 30)

end

  def test_room_name
    assert_equal("The Sturgeon", @room1.room_name)
  end

  def test_capacity
    assert_equal(35, @room2.capacity)

  end







end
