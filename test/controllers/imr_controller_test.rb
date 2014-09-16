require 'test_helper'

class ImrControllerTest < ActionController::TestCase
  test "should get services" do
    get :services
    assert_response :success
  end

  test "should get cs" do
    get :cs
    assert_response :success
  end

end
