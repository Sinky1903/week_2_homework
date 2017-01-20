require('minitest/autorun')
require('minitest/rg')

require_relative('../rooms')

class TestRooms < MiniTest::Test


def setup
@rooms = Rooms.new("Room 1")
end

def test_room_name
assert_equal("Room 1", @rooms.name)
end

  end