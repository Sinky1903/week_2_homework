class Guests

  attr_reader :name, :money, :fav_songs

  def initialize(name, money, fav_songs)

    @name = name
    @money = money
    @fav_songs = fav_songs

  end


  def guest_fave_song

  end


  # def pet_type(search_name)
  #   found_pet = @pets.find() { |pet| pet.name == search_name}
  #   return found_pet.type
  # end

end