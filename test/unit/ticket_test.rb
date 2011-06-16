require 'test_helper'

class TicketTest < ActiveSupport::TestCase
  test "creation" do
    assert_valid Ticket.create(:title => "Holy wow!")
  end
end
