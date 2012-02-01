class Account < ActiveRecord::Base
  has_many :users
  has_many :rooms
  
  validates :name, :presence => true,
                   :capitalized => true
                   # :format => /\A[A-Z]/ ### Exercise: turn into this: `:capitalized => true`
end
