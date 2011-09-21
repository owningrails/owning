class User < ActiveRecord::Base
  include Authenticatable
  
  has_many :tickets
end
