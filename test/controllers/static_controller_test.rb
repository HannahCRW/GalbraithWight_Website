require 'test_helper'

class StaticControllerTest < ActionController::TestCase
  test "should get contact" do
    get :contact
    assert_response :success
  end

  test "should get sitemap" do
    get :sitemap
    assert_response :success
  end

end
