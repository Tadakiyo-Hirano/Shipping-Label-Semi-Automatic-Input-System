require 'test_helper'

class MarketsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get markets_index_url
    assert_response :success
  end

  test "should get edit" do
    get markets_edit_url
    assert_response :success
  end

  test "should get update" do
    get markets_update_url
    assert_response :success
  end

end
