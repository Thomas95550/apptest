require 'test_helper'

class UrlsControllerTest < ActionController::TestCase
  test "should get categories" do
    get :categories
    assert_response :success
  end

end
