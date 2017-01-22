class Rooms

  attr_reader :name, :capacity, :customers

  def initialize(name, capacity)

    @name = name
    @capacity = capacity
    @customers = Array.new()
    @playlists = Array.new()

  end


  def room_occupants
    return @customers.count
  end


  def add_guest_to_room(customer)
    @customers << customer
    if customer <= capacity
    end
    return "Sorry too many guests!"
  end


  def playlist_check
    @playlists.count
  end


  def add_songs_to_room(playlist)
   @playlists << playlist
 end


 def empty_room
  @customers.clear
end


def delete_songs
  @playlists.clear
end


end