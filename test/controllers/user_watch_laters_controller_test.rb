require "test_helper"

class UserWatchLatersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_watch_later = user_watch_laters(:one)
  end

  test "should get index" do
    get user_watch_laters_url
    assert_response :success
  end

  test "should get new" do
    get new_user_watch_later_url
    assert_response :success
  end

  test "should create user_watch_later" do
    assert_difference("UserWatchLater.count") do
      post user_watch_laters_url, params: { user_watch_later: { film_id: @user_watch_later.film_id, user_profile_id: @user_watch_later.user_profile_id } }
    end

    assert_redirected_to user_watch_later_url(UserWatchLater.last)
  end

  test "should show user_watch_later" do
    get user_watch_later_url(@user_watch_later)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_watch_later_url(@user_watch_later)
    assert_response :success
  end

  test "should update user_watch_later" do
    patch user_watch_later_url(@user_watch_later), params: { user_watch_later: { film_id: @user_watch_later.film_id, user_profile_id: @user_watch_later.user_profile_id } }
    assert_redirected_to user_watch_later_url(@user_watch_later)
  end

  test "should destroy user_watch_later" do
    assert_difference("UserWatchLater.count", -1) do
      delete user_watch_later_url(@user_watch_later)
    end

    assert_redirected_to user_watch_laters_url
  end
end
