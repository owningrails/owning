require 'test_helper'

class AccountTest < ActiveSupport::TestCase
  test "validates name starts with capital letter" do
    assert_present Account.create(:name => "holla").errors[:name]
    assert_blank Account.create(:name => "Holla").errors[:name]
  end
end
