require('minitest/autorun')
require('minitest/rg')

require_relative('../guests')
require_relative('../songs')


class TestGuests < MiniTest::Test


  def setup

    @song1 = Songs.new("Song 1")
    @song2 = Songs.new("Song 2")
    @song3 = Songs.new("Song 3")

    @guest = Guests.new("Guest 1", 50, ["Song 1", "Song 4", "Song 5"])
  end

  def test_guest_name
    assert_equal("Guest 1", @guest.name)
  end

def test_guest_money
assert_equal(50, @guest.money)
end

# def test_guest_fave_song
# fave_song = @guest.fav_songs("Song 1")
# assert_equal("Song 1", fave_song)
# end

# def test_pet_merlin_is_cat
#    fave_song = @guest.fave_song("Song 1")
#    assert_equal(:cat, pet_type)
# end

end