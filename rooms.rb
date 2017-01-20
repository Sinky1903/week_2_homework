class Rooms

  attr_accessor :name, :customers

  def initialize(name)

    @name = name
    @customers = Array.new()
    @playlists = Array.new()

  end


  def room_occupants
    return @customers.count
  end


  def add_guest_to_room(customer)
    @customers << customer
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

end