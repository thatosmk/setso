require 'test_helper'

class SettingsControllerTest < ActionDispatch::IntegrationTest
  test "should get profile" do
    get settings_profile_url
    assert_response :success
  end

  test "should get notifications" do
    get settings_notifications_url
    assert_response :success
  end

  test "should get account" do
    get settings_account_url
    assert_response :success
  end

end
