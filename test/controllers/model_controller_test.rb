require 'test_helper'

class ModelControllerTest < ActionDispatch::IntegrationTest
  test "should get Actu" do
    get model_Actu_url
    assert_response :success
  end

  test "should get title:string" do
    get model_title:string_url
    assert_response :success
  end

  test "should get context:string" do
    get model_context:string_url
    assert_response :success
  end

end
