class User < ActiveRecord::Base
  belongs_to :account
  
  include Authenticatable
  
  validates :name, :presence => true
end
