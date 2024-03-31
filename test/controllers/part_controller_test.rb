require "test_helper"

class PartControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get part_index_url
    assert_response :success
  end

  test "should get show" do
    get part_show_url
    assert_response :success
  end

  test "should get new" do
    get part_new_url
    assert_response :success
  end

  test "should get destroy" do
    get part_destroy_url
    assert_response :success
  end
end
