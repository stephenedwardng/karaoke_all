require( 'minitest/autorun' )
require( 'minitest/rg' )

require_relative( '../guest' )
require_relative( '../song' )


class TestGuest < MiniTest::Test

  def setup
    @guest = Guest.new("Eddie", "Ng", 100, "Frank Sinatra My Way")
    @song = Song.new("Frank Sinatra", "My Way")
  end

  def test_first_name()
    assert_equal("Eddie", @guest.get_first_name())
  end

  def test_last_name()
    assert_equal("Ng", @guest.get_last_name())
  end

  def test_get_cash()
    assert_equal(100, @guest.get_cash())
  end

  def test_get_fav_song()
    assert_equal("Frank Sinatra My Way", @guest.get_fav_song())
  end

  def test_decrease_cash()
    assert_equal(90, @guest.decrease_cash(90))
  end

  def test_sing()
    assert_equal("Eddie Ng is singing", @guest.sing())
  end

  def test_cheer()
    assert_equal("Whoo", @guest.cheer(@song.song()))
  end

end