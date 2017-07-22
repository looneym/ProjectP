require 'test_helper'

class UserControllerTest < ActionDispatch::IntegrationTest
  test "should get ping" do
    get user_ping_url
    assert_response :success
  end

end
