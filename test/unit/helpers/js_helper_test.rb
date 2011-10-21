require 'test_helper'

class JsHelperTest < ActionView::TestCase
  test "catch_errors_on" do
    object = mock(:errors => [])
    content = catch_errors_on(object) { "content" }
    assert_equal "content", content
  end
  
  test "catch_errors_on with error" do
    errors = ["ouch!"]
    errors.expects(:full_messages).returns(errors)
    object = stub(:errors => errors)
    content = catch_errors_on(object) { "content" }
    assert_equal 'alert("ouch!");', content
  end
end
