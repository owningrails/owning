require 'test_helper'

class MessagesControllerTest < ActionController::TestCase
  def setup
    sign_in users(:dex)
  end
  
  test "create" do
    Room.any_instance.expects(:publish).once
    
    assert_difference "Message.count", +1 do
      post :create, :room_id => rooms(:main), :message => { :body => "holla!" }, :format => "js"
      assert_response :success, @response.body
      assert_no_match /alert/, @response.body
    end
  end
  
  test "create with error" do
    Room.any_instance.expects(:publish).never
    
    post :create, :room_id => rooms(:main), :message => { :body => "" }, :format => "js"
    assert_response :success, @response.body
    assert_match /alert/, @response.body
  end
end
