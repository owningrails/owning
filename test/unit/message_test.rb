require 'test_helper'

class MessageTest < ActiveSupport::TestCase
  test "to_publishable" do
    assert_equal({ :author => "dex", :body => "holla" },
                 Message.new(:user => users(:dex), :body => "holla").to_publishable)
  end
end
