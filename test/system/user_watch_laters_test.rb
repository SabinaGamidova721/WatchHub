require "application_system_test_case"

class UserWatchLatersTest < ApplicationSystemTestCase
  setup do
    @user_watch_later = user_watch_laters(:one)
  end

  test "visiting the index" do
    visit user_watch_laters_url
    assert_selector "h1", text: "User watch laters"
  end

  test "should create user watch later" do
    visit user_watch_laters_url
    click_on "New user watch later"

    fill_in "Film", with: @user_watch_later.film_id
    fill_in "User profile", with: @user_watch_later.user_profile_id
    click_on "Create User watch later"

    assert_text "User watch later was successfully created"
    click_on "Back"
  end

  test "should update User watch later" do
    visit user_watch_later_url(@user_watch_later)
    click_on "Edit this user watch later", match: :first

    fill_in "Film", with: @user_watch_later.film_id
    fill_in "User profile", with: @user_watch_later.user_profile_id
    click_on "Update User watch later"

    assert_text "User watch later was successfully updated"
    click_on "Back"
  end

  test "should destroy User watch later" do
    visit user_watch_later_url(@user_watch_later)
    click_on "Destroy this user watch later", match: :first

    assert_text "User watch later was successfully destroyed"
  end
end
