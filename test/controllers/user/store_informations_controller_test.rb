require "test_helper"

class User::StoreInformationsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get user_store_informations_show_url
    assert_response :success
  end

  test "should get index" do
    get user_store_informations_index_url
    assert_response :success
  end
end
