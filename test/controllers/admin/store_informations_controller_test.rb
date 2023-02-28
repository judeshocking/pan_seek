require "test_helper"

class Admin::StoreInformationsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_store_informations_index_url
    assert_response :success
  end

  test "should get edit" do
    get admin_store_informations_edit_url
    assert_response :success
  end

  test "should get new" do
    get admin_store_informations_new_url
    assert_response :success
  end
end
