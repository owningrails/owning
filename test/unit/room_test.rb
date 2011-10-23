require 'test_helper'

class RoomTest < ActiveSupport::TestCase
  test "publish" do
    room = Room.first
    
    # Setup expectations
    client = mock do
      expects(:publish).with("/rooms/#{room.id}", "data")
    end
    Faye::Client.expects(:new).with("http://host/faye").returns(client)
    
    room.publish("host", mock(:to_publishable => "data"))
  end
end
