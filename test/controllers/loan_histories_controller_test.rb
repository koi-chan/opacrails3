require 'test_helper'

class LoanHistoriesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get loan_histories_index_url
    assert_response :success
  end

  test "should get show" do
    get loan_histories_show_url
    assert_response :success
  end

end
