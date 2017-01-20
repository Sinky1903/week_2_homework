require('minitest/autorun')
require('minitest/rg')

require_relative('../rooms')
require_relative('../guests')
require_relative('../songs')



class TestRooms < MiniTest::Test


  def setup

    @song1 = Songs.new("Song 1")
    @song2 = Songs.new("Song 2")
    @song3 = Songs.new("Song 3")

    @customer1 = Guests.new("Guest 1")
    @customer2 = Guests.new("Guest 2")
    @customer3 = Guests.new("Guest 3")

    @room1 = Rooms.new("Room 1")
    @room2 = Rooms.new("Room 2")
    @room3 = Rooms.new("Room 3")

  end


  def test_room_name
    assert_equal("Room 1", @room1.name)
  end


  def test_room_occupants
    assert_equal(0, @room1.room_occupants)
  end


  def test_add_guest_to_room
    @room1.add_guest_to_room(@customer1)
    assert_equal(1, @room1.room_occupants)
  end


  def test_playlist_check
    assert_equal(0, @room2.playlist_check)
  end


  def test_add_songs_to_room
    @room2.add_songs_to_room(@song2)
    assert_equal(1, @room2.playlist_check)
  end

  def test_empty_room
    @room1.add_guest_to_room(@customer1)
    @room1.add_guest_to_room(@customer2)
    @room1.empty_room()
    assert_equal(0, @room1.room_occupants)
  end

end