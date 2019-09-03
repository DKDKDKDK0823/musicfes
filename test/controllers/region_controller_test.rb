require 'test_helper'

class RegionControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get region_index_url
    assert_response :success
  end

  test "should get destroy" do
    get region_destroy_url
    assert_response :success
  end

end
