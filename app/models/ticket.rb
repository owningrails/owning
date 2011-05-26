class Ticket < ActiveRecord::Base
  belongs_to :author, :class_name => "User"
  belongs_to :owner, :class_name => "User"
  
  # validates_presence_of :title
  validates :title, :presence => true
  
  validates :status, :inclusion => %w( new opened closed )
  validates :description, :not_same => { :as => :title }
end
