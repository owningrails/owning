require 'test_helper'

class TicketTest < ActiveSupport::TestCase
  test "creation" do
    assert_valid Ticket.create(:title => "Holy wow!")
  end
  
  test "custom validation" do
    assert_present Ticket.create(:title => "Same", :description => "Same").errors[:description]
    assert_blank Ticket.create(:title => "Same", :description => "Not same").errors[:description]
  end
end
