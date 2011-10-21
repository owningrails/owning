require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "find via user name" do
    assert_equal users(:dex), User.find_for_authentication(:name => "dex")
  end
end
