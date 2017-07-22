require 'test_helper'

class ControllerControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get controller_show_url
    assert_response :success
  end

  test "should get index" do
    get controller_index_url
    assert_response :success
  end

end
