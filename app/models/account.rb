class Account < ActiveRecord::Base
  has_many :users
  has_many :rooms
  
  validates :name, :presence => true
end
