class Ticket < ActiveRecord::Base
  belongs_to :author, :class_name => "User"
  belongs_to :owner, :class_name => "User"
  
  has_many :comments
  
  validates_presence_of :title
  # same as...
  # validates :title, :presence => true
  
  validates :description, :not_same => { :as => :title }
  
  scope :opened, where(:status => "opened")
  scope :by, proc { |author| where(:author_id => author.id) }
  
  def self.close!
    update_all(:status => "closed")
  end
end
