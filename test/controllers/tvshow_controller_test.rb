require 'test_helper'

class TvshowControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get tvshow_index_url
    assert_response :success
  end

  test "should get create" do
    get tvshow_create_url
    assert_response :success
  end

  test "should get show" do
    get tvshow_show_url
    assert_response :success
  end

end
