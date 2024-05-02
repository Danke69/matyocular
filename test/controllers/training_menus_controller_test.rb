require "test_helper"

class TrainingMenusControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get training_menus_new_url
    assert_response :success
  end

  test "should get create" do
    get training_menus_create_url
    assert_response :success
  end

  test "should get destroy" do
    get training_menus_destroy_url
    assert_response :success
  end

  test "should get show" do
    get training_menus_show_url
    assert_response :success
  end
end
