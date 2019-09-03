require 'test_helper'

class DayControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get day_show_url
    assert_response :success
  end

  test "should get index" do
    get day_index_url
    assert_response :success
  end

end
