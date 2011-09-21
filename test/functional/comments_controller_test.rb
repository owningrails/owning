require 'test_helper'

class CommentsControllerTest < ActionController::TestCase
  test "create a comment on a ticket" do
    ticket = Ticket.first

    post :create, :ticket_id => ticket, :comment => { :body => "Hi" }, :format => "js"

    assert_response :success, @response.body
  end
end
