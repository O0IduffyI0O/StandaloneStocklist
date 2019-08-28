require 'test_helper'

class StocklistControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get stocklist_index_url
    assert_response :success
  end

end
