require 'minitest/autorun'
require 'minitest/pride'
require './lib/room'

class RoomTest < Minitest::Test

  def test_room_exists
    room = Room.new(:bedroom, 10, 13)

    assert_instance_of Room, room
  end

  def test_attributes
    room = Room.new(:bedroom, 10, 13)

    assert_equal :bedroom, room.category
    assert_equal 130, room.area
  end

end
