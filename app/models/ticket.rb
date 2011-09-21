class Ticket < ActiveRecord::Base
  belongs_to :user
  
  # validates_presence_of :title
  # same as
  validates :title, :presence => true
  
  validates :status, :inclusion => %w( new opened closed )
  
  validates :description, :not_same => { :as => :title }
end
