require_relative( 'guest' )

class Room

  def initialize(id, capacity, num_of_songs)
    @id = id
    @capacity = capacity
    @num_of_songs = num_of_songs
    @guests = []
    @songs = []
    @entrance_fee = 10
    @total_entrance_fees = 0
  end

  def get_id()
    return @id
  end

  def get_capacity()
    return @capacity
  end

  def get_entrance_fee()
    return @entrance_fee
  end

  def get_total_entrance_fees()
    return @total_entrance_fees
  end

  def get_num_of_songs()
    return @num_of_songs
  end

  def guest_count()
      return @guests.length()
  end

  def check_guest_in(guest)
    if (guest_count() < @capacity)
      @guests << guest
      guest.decrease_cash(guest.get_cash() - @entrance_fee) 
      @total_entrance_fees += @entrance_fee
    else
      return "Room at capacity"
    end
  end

  def check_guest_out(guest)
      index = @guests.index(guest)
      @guests.slice!(index, 1)
  end

  def song_count()
      return @songs.length()
  end

  def add_song(song)
      @songs << song
  end

end