require 'test_helper'

class UserteamsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @userteam = userteams(:one)
  end

  test "should get index" do
    get userteams_url
    assert_response :success
  end

  test "should get new" do
    get new_userteam_url
    assert_response :success
  end

  test "should create userteam" do
    assert_difference('Userteam.count') do
      post userteams_url, params: { userteam: {  } }
    end

    assert_redirected_to userteam_url(Userteam.last)
  end

  test "should show userteam" do
    get userteam_url(@userteam)
    assert_response :success
  end

  test "should get edit" do
    get edit_userteam_url(@userteam)
    assert_response :success
  end

  test "should update userteam" do
    patch userteam_url(@userteam), params: { userteam: {  } }
    assert_redirected_to userteam_url(@userteam)
  end

  test "should destroy userteam" do
    assert_difference('Userteam.count', -1) do
      delete userteam_url(@userteam)
    end

    assert_redirected_to userteams_url
  end
end
