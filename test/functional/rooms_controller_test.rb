require 'test_helper'

class RoomsControllerTest < ActionController::TestCase
  def setup
    sign_in users(:dex)
  end
  
  test "should get index" do
    get :index
    assert_response :success
  end
  
  test "should get show" do
    get :show, :id => rooms(:main)
    assert_response :success
  end
end
