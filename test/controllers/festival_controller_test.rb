require 'test_helper'

class FestivalControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get festival_show_url
    assert_response :success
  end

  test "should get index" do
    get festival_index_url
    assert_response :success
  end

end
