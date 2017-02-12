require 'test_helper'

class Admin::BlogsControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

   test "should get index" do
    get admin_blogs_index_url
    assert_response :success
  end

  test "should get show" do
    get admin_blogs_show_url
    assert_response :success
  end
end
