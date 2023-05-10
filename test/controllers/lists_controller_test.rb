require "test_helper"

class ListsControllerTest < ActionDispatch::IntegrationTest
  test "should get top" do
    get lists_top_url
    assert_response :success
  end
end
