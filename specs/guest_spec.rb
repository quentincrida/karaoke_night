
require('minitest/autorun')
require('minitest/reporters')
require_relative('../guest.rb')
require_relative('../room.rb')
require_relative('../song.rb')

MiniTest::Reporters.use! MiniTest::Reporters::SpecReporter.new


class TestGuest < Minitest::Test

  def setup()
    @name1 = Guest.new("Eric")
    @name2 = Guest.new("Este")
    @name3 = Guest.new("Liliana")
    @name4 = Guest.new("Quentin")


    @guests = [@name1, @name2, @name3, @name4]

    end

  def test_guest_has_name
    assert_equal("Eric", @name1.name)

  end
end
