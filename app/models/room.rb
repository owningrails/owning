class Room < ActiveRecord::Base
  belongs_to :account
  has_many :messages
  
  validates :name, :presence => true
end
