require( 'minitest/autorun' )
require( 'minitest/rg' )

require_relative( '../song' )
require_relative( '../guest' )


class TestSong < MiniTest::Test

  def setup
    @song = Song.new("Pink Floyd", "Money")


  end

  def test_artist()
    assert_equal("Pink Floyd", @song.get_artist())
  end

  def test_title()
    assert_equal("Money", @song.get_title())
  end

  def test_song()
    assert_equal("Pink Floyd Money", @song.song())
  end

  def test_play_song()
    assert_equal("Now playing Money by Pink Floyd", @song.play_song())
  end


end