require "test_helper"

class ErrorsControllerTest < ActionDispatch::IntegrationTest
  test "should get page_not_found" do
    get errors_page_not_found_url
    assert_response :success
  end

  test "should get server_error" do
    get errors_server_error_url
    assert_response :success
  end
end
