class Room

attr_reader :room_name, :capacity, :playlist


  def initialize(room_name, capacity, playlist)
    @room_name = room_name
    @capacity = capacity
    @playlist = playlist

  end

  def add_song_to_room(add_song)
     return @playlist.push(add_song)
  end

  #
  # def guest_check_in(add_name)
  #   return @guests.push(add_name)
  # end
  #
  # def guest_check_out(name_out)
  #   return @guests.
end
