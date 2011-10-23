require 'test_helper'

class MessageTest < ActiveSupport::TestCase
  test "to_publishable" do
    message = Message.new(:body => "holla")
    message.user = users(:dex)
    assert_equal({ :author => "dex", :body => "holla" }, message.to_publishable)
  end
end
