require 'test_helper'

class TicketTest < ActiveSupport::TestCase
  test "creation" do
    ticket = Ticket.create(:title => "OUCH!")
    assert_valid ticket
  end
  
  test "validates description" do
    assert_present Ticket.create(:title => "Same", :description => "Same").errors[:description]
    assert_blank Ticket.create(:title => "Same", :description => "Not Same").errors[:description]
  end
end
