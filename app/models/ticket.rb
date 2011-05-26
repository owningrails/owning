class Ticket < ActiveRecord::Base
  belongs_to :author, :class_name => "User"
  belongs_to :owner, :class_name => "User"
  
  has_many :comments, :as => :subject
  
  # validates_presence_of :title
  validates :title, :presence => true
  
  validates :status, :inclusion => %w( new opened closed )
  validates :description, :not_same => { :as => :title }
  
  # def self.close_all_opened_by(author)
  #   
  # end
  # def self.close_all_opened
  #   
  # end
  
  scope :opened, where(:status => "opened")
  scope :by, proc { |author| where(:author_id => author.id) }
  
  def self.close!
    update_all :status => "closed"
  end
end
