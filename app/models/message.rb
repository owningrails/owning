class Message < ActiveRecord::Base
  belongs_to :user
  belongs_to :room
  
  validates :body, :presence => true
  
  def to_publishable
    { :author => user.name, :body => body }
  end
end
