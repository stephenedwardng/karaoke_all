require( 'minitest/autorun' )
require( 'minitest/rg' )

require_relative( '../room' )
require_relative( '../guest' )
require_relative( '../song' )


class TestRoom < MiniTest::Test

  def setup
    @room = Room.new(1, 5, 15)

    @guest_1 = Guest.new("Eddie", "Ng", 100, "Frank Sinatra My Way")
    @guest_2 = Guest.new("Brian", "Wilson", 50000, "Wouldn't it be Nice")
    @guest_3 = Guest.new("Ringo", "Starr", 3, "A Day in the Life")
    @guest_4 = Guest.new("Sid", "Barratt", 0, "Bike")
    @guest_5 = Guest.new("Ludwig", "Beethoven", 10000000, "For Elise")
    @guest_6 = Guest.new("Gustav", "Mahler", 55, "Adagietto")

    @song_1 = Song.new("Pink Floyd", "Money")
    @song_2 = Song.new("Beach Boys", "Good Vibrations")
    @song_3 = Song.new("The Beatles", "Strawberry Fields")
    @song_4 = Song.new("David Bowie", "Life on Mars")
    @song_5 = Song.new("Frank Sinatra", "My Way")


  end

  def test_id()
    assert_equal(1, @room.get_id())
  end

  def test_capacity()
    assert_equal(5, @room.get_capacity())
  end

  def test_get_entrance_fee()
    assert_equal(10, @room.get_entrance_fee())
  end

  def test_guest_count()
    assert_equal(0, @room.guest_count())
  end

  def test_check_guest_in()
      @room.check_guest_in(@guest_1)
      @room.check_guest_in(@guest_2)
      assert_equal(2, @room.guest_count())
      assert_equal(90, @guest_1.get_cash())
  end

  def test_check_guest_in__reached_capacity()
      @room.check_guest_in(@guest_1)
      @room.check_guest_in(@guest_2)
      @room.check_guest_in(@guest_3)
      @room.check_guest_in(@guest_4)
      @room.check_guest_in(@guest_5)
      @room.check_guest_in(@guest_6)
      assert_equal(5, @room.guest_count())
  end

  def test_check_guest_out()
      @room.check_guest_in(@guest_1)
      @room.check_guest_in(@guest_2)
      @room.check_guest_in(@guest_3)
      @room.check_guest_out(@guest_1)
      assert_equal(2, @room.guest_count())
  end

  def test_num_of_songs()
    assert_equal(15, @room.get_num_of_songs())
  end

  def test_add_song()
      @room.add_song(@song_1)
      @room.add_song(@song_2)
      @room.add_song(@song_3)
      @room.add_song(@song_4)
      assert_equal(4, @room.song_count())
  end

  def test_total_entrance_fees()
    @room.check_guest_in(@guest_1)
    @room.check_guest_in(@guest_2)
    @room.check_guest_in(@guest_3)
    assert_equal(30, @room.get_total_entrance_fees())
  end

end