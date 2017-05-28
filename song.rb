class Song

  def initialize(artist, title)
    @artist = artist
    @title = title

  end

  def get_artist()
    return @artist
  end

  def get_title()
    return @title
  end

  def song()
    return "#{@artist} #{@title}"
  end

  def play_song()
    return "Now playing #{@title} by #{@artist}"
  end

end