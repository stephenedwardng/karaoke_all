class Guest

  def initialize(first_name, last_name, cash, fav_song)
    @first_name = first_name
    @last_name = last_name
    @cash = cash
    @fav_song = fav_song
  end

  def get_first_name()
    return @first_name
  end

  def get_last_name()
    return @last_name
  end

  def get_cash()
    return @cash
  end

  def get_fav_song()
    return @fav_song
  end

  def decrease_cash(cash)
    @cash = cash
  end

  def sing()
    return "#{@first_name} #{@last_name} is singing"
  end

  def cheer(song)
    if (@fav_song == song)
      return "Whoo"
    end
  end

end