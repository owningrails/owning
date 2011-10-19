class Room < ActiveRecord::Base
  FAYE_MOUNT_POINT = "/faye"
  
  belongs_to :account
  has_many :messages
  
  validates :name, :presence => true
  
  def channel
    "/rooms/#{id}"
  end
  
  def publish(host, data)
    client = Faye::Client.new("http://#{host}#{FAYE_MOUNT_POINT}")
    client.publish(channel, data)
  end
end
