class Room < ActiveRecord::Base
  belongs_to :account
  has_many :messages
  
  validates :name, :presence => true
  
  def faye_url(host)
    "http://#{host}/faye"
  end
  
  def channel
    "/rooms/#{id}"
  end
  
  def publish(host, data)
    client = Faye::Client.new(faye_url(host))
    client.publish(channel, data)
  end
end
