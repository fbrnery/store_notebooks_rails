require "test_helper"

class SessionsUsersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get sessions_users_new_url
    assert_response :success
  end

  test "should get create" do
    get sessions_users_create_url
    assert_response :success
  end

  test "should get destroy" do
    get sessions_users_destroy_url
    assert_response :success
  end
end
