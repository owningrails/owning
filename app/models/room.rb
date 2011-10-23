class Room < ActiveRecord::Base
  belongs_to :account
  has_many :messages
  
  validates :name, :presence => true
  
  attr_accessible :name
  
  def faye_url(host)
    "http://#{host}/faye"
  end
  
  def channel
    "/rooms/#{id}"
  end
  
  def publish(host, object)
    client = Faye::Client.new(faye_url(host))
    client.publish(channel, object.to_publishable)
  end
end
