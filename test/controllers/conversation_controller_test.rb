require 'test_helper'

class ConversationControllerTest < ActionDispatch::IntegrationTest
  test "should get list" do
    get conversation_list_url
    assert_response :success
  end

  test "should get company" do
    get conversation_company_url
    assert_response :success
  end

  test "should get tag" do
    get conversation_tag_url
    assert_response :success
  end

end
