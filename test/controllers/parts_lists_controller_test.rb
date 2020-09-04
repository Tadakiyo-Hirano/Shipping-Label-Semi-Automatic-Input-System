require 'test_helper'

class PartsListsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get parts_lists_index_url
    assert_response :success
  end

end
