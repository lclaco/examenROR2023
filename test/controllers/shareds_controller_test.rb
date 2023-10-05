require "test_helper"

class SharedsControllerTest < ActionDispatch::IntegrationTest
  test "should get _index" do
    get shareds__index_url
    assert_response :success
  end
end
