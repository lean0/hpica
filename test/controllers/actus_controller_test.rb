require 'test_helper'

class ActusControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get actus_index_url
    assert_response :success
  end

  test "should get show" do
    get actus_show_url
    assert_response :success
  end

  test "should get new" do
    get actus_new_url
    assert_response :success
  end

  test "should get create" do
    get actus_create_url
    assert_response :success
  end

  test "should get edit" do
    get actus_edit_url
    assert_response :success
  end

  test "should get update" do
    get actus_update_url
    assert_response :success
  end

  test "should get delete" do
    get actus_delete_url
    assert_response :success
  end

end
