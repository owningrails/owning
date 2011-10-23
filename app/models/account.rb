class Account < ActiveRecord::Base
  has_many :users
  has_many :rooms
  
  validates :name, :presence => true,
                   # :format => /\A[A-Z]/
                   :capitalized => true
end
