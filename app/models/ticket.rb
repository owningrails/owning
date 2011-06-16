class Ticket < ActiveRecord::Base
  belongs_to :author, :class_name => "User"
  belongs_to :owner, :class_name => "User"
  
  validates_presence_of :title
  # same as...
  # validates :title, :presence => true
  
  validates :description, :not_same => { :as => :title }
end
