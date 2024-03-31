require "test_helper"

class TrainingListsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get training_lists_index_url
    assert_response :success
  end

  test "should get show" do
    get training_lists_show_url
    assert_response :success
  end

  test "should get new" do
    get training_lists_new_url
    assert_response :success
  end

  test "should get destroy" do
    get training_lists_destroy_url
    assert_response :success
  end
end
