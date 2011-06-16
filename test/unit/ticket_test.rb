require 'test_helper'

class TicketTest < ActiveSupport::TestCase
  test "creation" do
    assert_valid Ticket.create(:title => "Holy wow!")
  end
  
  test "custom validation" do
    assert_present Ticket.create(:title => "Same", :description => "Same").errors[:description]
    assert_blank Ticket.create(:title => "Same", :description => "Not same").errors[:description]
  end
  
  test "closed all opened tickets" do
    Ticket.opened.close!
    assert_equal 0, Ticket.opened.count
  end
  
  test "closed all opened tickets by ma" do
    puts Ticket.opened.by(users(:ma)).to_sql
    Ticket.opened.by(users(:ma)).close!
    assert_equal 0, Ticket.opened.count
  end
end
