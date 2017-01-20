require('minitest/autorun')
require('minitest/rg')

require_relative('../guests')

class TestGuests < MiniTest::Test


def setup
@guests = Guests.new("Guest 1")
end

def test_guest_name
assert_equal("Guest 1", @guests.name)
end

  end