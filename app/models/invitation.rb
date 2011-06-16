class Invitation
  include ActiveModel::Validations
  
  validates_presence_of :from, :to
  
  attr_accessor :from, :to
  
  def initialize(from, to)
    @from = from
    @to = to
  end
end