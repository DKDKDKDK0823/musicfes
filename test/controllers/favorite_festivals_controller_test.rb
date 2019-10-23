require 'test_helper'

class FavoriteFestivalsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get favorite_festivals_index_url
    assert_response :success
  end

  test "should get create" do
    get favorite_festivals_create_url
    assert_response :success
  end

  test "should get destroy" do
    get favorite_festivals_destroy_url
    assert_response :success
  end

end
