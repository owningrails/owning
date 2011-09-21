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
  
  test "close all opened" do
    Ticket.opened.close!
    assert_equal 0, Ticket.opened.count
  end
  
  test "closed all opened by ma" do
    ticket_scope = Ticket.opened.by(users(:ma))
    # puts ticket_scope.order("created_at desc").limit(3).to_sql
    
    assert_difference "Ticket.opened.count", -ticket_scope.count do
      ticket_scope.close!
    end
  end
end
