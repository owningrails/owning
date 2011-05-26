class Invitation
  include ActiveModel::Validations
  
  attr_accessor :from, :to
  
  validates_presence_of :from, :to
  
  def initialize(from, to)
    @from = from
    @to = to
  end
end