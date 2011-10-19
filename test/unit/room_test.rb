require 'test_helper'

class RoomTest < ActiveSupport::TestCase
  def test_publish
    room = Room.first
    
    # Setup expectations
    client = mock do
      expects(:publish).with("/rooms/#{room.id}", "data")
    end
    Faye::Client.expects(:new).with("http://host/faye").returns(client)
    
    room.publish("host", "data")
  end
end
