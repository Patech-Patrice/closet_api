require "test_helper"

class HandbagsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get handbags_index_url
    assert_response :success
  end
end
