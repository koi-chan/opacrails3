require 'test_helper'

class UserStatusesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get user_statuses_index_url
    assert_response :success
  end

  test "should get new" do
    get user_statuses_new_url
    assert_response :success
  end

  test "should get show" do
    get user_statuses_show_url
    assert_response :success
  end

  test "should get edit" do
    get user_statuses_edit_url
    assert_response :success
  end

end
