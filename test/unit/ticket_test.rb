require 'test_helper'

class TicketTest < ActiveSupport::TestCase
  test "creation" do
    assert_valid Ticket.create(:title => "Hello")
  end
  
  # Make this pass
  test "custom validation" do
    assert_present Ticket.create(:title => "same", :description => "same").errors[:description]
    assert_blank Ticket.create(:title => "same", :description => "not same").errors[:description]
  end
  
  test "close all opened" do
    Ticket.opened.close!
    assert_equal 0, Ticket.opened.count
  end
  
  test "something interesting" do
    Ticket.opened.by(users(:ma)).close!
  end
end
