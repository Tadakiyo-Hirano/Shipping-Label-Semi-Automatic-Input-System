require 'test_helper'

class IssueRegsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get issue_regs_index_url
    assert_response :success
  end

end
