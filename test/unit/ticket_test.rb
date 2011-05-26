require 'test_helper'

class TicketTest < ActiveSupport::TestCase
  test "creation" do
    assert_valid Ticket.create(:title => "Hello")
  end
  
  test "custom validation" do
    assert_present Ticket.create(:title => "same", :description => "same").errors[:description]
    assert_blank Ticket.create(:title => "same", :description => "not same").errors[:description]
  end
end
