require "test_helper"

class TrainingsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get trainings_show_url
    assert_response :success
  end

  test "should get new" do
    get trainings_new_url
    assert_response :success
  end

  test "should get destroy" do
    get trainings_destroy_url
    assert_response :success
  end
end
