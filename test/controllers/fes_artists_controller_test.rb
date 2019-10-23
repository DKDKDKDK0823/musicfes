require 'test_helper'

class FesArtistsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get fes_artists_new_url
    assert_response :success
  end

  test "should get creat" do
    get fes_artists_creat_url
    assert_response :success
  end

  test "should get destroy" do
    get fes_artists_destroy_url
    assert_response :success
  end

end
