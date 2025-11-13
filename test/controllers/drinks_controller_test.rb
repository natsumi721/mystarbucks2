require "test_helper"

class DrinksControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get drinks_show_url
    assert_response :success
  end
end
