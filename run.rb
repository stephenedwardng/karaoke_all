require_relative 'room'
require_relative 'guest'
require_relative 'song'

class Run

  def initialize()
    @room = Room.new(1, 5, 15)

    @guest_1 = Guest.new("Eddie", "Ng", 100, "Frank Sinatra My Way")
    @guest_2 = Guest.new("Brian", "Wilson", 50000, "Wouldn't it be Nice")
    @guest_3 = Guest.new("Ringo", "Starr", 3, "A Day in the Life")
    @guest_4 = Guest.new("Sid", "Barratt", 0, "Bike")
    @guest_5 = Guest.new("Ludwig", "Beethoven", 10000000, "For Elise")

    @song_1 = Song.new("Pink Floyd", "Money")
    @song_2 = Song.new("Beach Boys", "Good Vibrations")
    @song_3 = Song.new("The Beatles", "Strawberry Fields")
    @song_4 = Song.new("David Bowie", "Life on Mars")
    @song_5 = Song.new("Frank Sinatra", "My Way")

  end

  def run_menu()
    puts "Room #{@room.get_id} Menu"
    puts
    puts "Please select your option number"
    puts
    puts "1 - check in a guest"
    puts "2 - view room capacity"
    puts "3 - view room entrance fee"
    puts "4 - view current total from fees"
    puts "5 - add song to playlist"
    puts "6 - check out a guest"

    menu_action(gets.chomp)
  end

  def menu_action(menu_item)
    case menu_item
      when "1"
        @room.check_guest_in(@guest_1)
        puts "#{@guest_1.get_first_name()} #{@guest_1.get_last_name()} has been checked in"
      when "2"
        puts "Number of guests: #{@room.guest_count()}"
        puts "Room capacity: #{@room.get_capacity()}"
      when "3"
        puts "Entrance fee: £#{@room.get_entrance_fee()}"
      when "4"
        puts "Current total from fees: £#{@room.get_total_entrance_fees()}"
      when "5"
        @room.add_song(@song_1)
        puts "#{@song_1.get_title} by #{@song_1.get_artist} has been added to the playlist"
      when "6"
        @room.check_guest_in(@guest_1)
        @room.check_guest_out(@guest_1)
        puts "#{@guest_1.get_first_name()} #{@guest_1.get_last_name()} has been checked out"

    end
  end

  run = Run.new()
  run.run_menu()

end