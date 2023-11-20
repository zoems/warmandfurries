require "test_helper"

class FurriesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get furries_index_url
    assert_response :success
  end

  test "should get show" do
    get furries_show_url
    assert_response :success
  end

  test "should get create" do
    get furries_create_url
    assert_response :success
  end
end
