require 'test_helper'

class AboutControllerTest < ActionController::TestCase
  test "should get history" do
    get :history
    assert_response :success
  end

  test "should get vision" do
    get :vision
    assert_response :success
  end

  test "should get team" do
    get :team
    assert_response :success
  end

end
