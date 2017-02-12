require 'test_helper'

class Admin::PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get list" do
    get admin_pages_list_url
    assert_response :success
  end

  test "should get new" do
    get admin_pages_new_url
    assert_response :success
  end

  test "should get create" do
    get admin_pages_create_url
    assert_response :success
  end

  test "should get show" do
    get admin_pages_show_url
    assert_response :success
  end

  test "should get edit" do
    get admin_pages_edit_url
    assert_response :success
  end

  test "should get update" do
    get admin_pages_update_url
    assert_response :success
  end

  test "should get delete" do
    get admin_pages_delete_url
    assert_response :success
  end

end
