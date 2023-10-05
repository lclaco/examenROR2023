require "test_helper"

class FootersControllerTest < ActionDispatch::IntegrationTest
  test "should get _index" do
    get footers__index_url
    assert_response :success
  end
end
