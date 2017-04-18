require 'test_helper'

class BusschControllerTest < ActionController::TestCase
  test "should get services" do
    get :services
    assert_response :success
  end

end
