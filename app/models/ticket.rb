class Ticket < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  
  # validates_presence_of :title
  # same as
  validates :title, :presence => true
  
  validates :status, :inclusion => %w( new opened closed )
  
  validates :description, :not_same => { :as => :title }
  
  # def self.close_opened!
  #   # ...
  # end
  
  scope :opened, where(:status => "opened")
  scope :by, proc { |user| where(:user_id => user.id) }
  
  def self.close!
    update_all :status => "closed"
  end
end
