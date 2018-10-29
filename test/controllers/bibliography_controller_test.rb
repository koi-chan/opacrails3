require 'test_helper'

class BibliographyControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get bibliography_index_url
    assert_response :success
  end

  test "should get new" do
    get bibliography_new_url
    assert_response :success
  end

  test "should get create" do
    get bibliography_create_url
    assert_response :success
  end

  test "should get show" do
    get bibliography_show_url
    assert_response :success
  end

end
