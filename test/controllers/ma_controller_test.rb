require 'test_helper'

class MaControllerTest < ActionController::TestCase
  test "should get services" do
    get :services
    assert_response :success
  end

  test "should get cs" do
    get :cs
    assert_response :success
  end

end
