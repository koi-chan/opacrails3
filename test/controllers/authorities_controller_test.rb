require 'test_helper'

class AuthoritiesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get authorities_index_url
    assert_response :success
  end

  test "should get new" do
    get authorities_new_url
    assert_response :success
  end

  test "should get show" do
    get authorities_show_url
    assert_response :success
  end

  test "should get edit" do
    get authorities_edit_url
    assert_response :success
  end

end
