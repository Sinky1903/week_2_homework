require('minitest/autorun')
require('minitest/rg')

require_relative('../songs')

class TestSongs < MiniTest::Test


def setup
@songs = Songs.new("Song 1")
end

def test_song_name
assert_equal("Song 1", @songs.name)
end

  end