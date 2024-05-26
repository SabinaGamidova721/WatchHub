require "application_system_test_case"

class UserHistoriesTest < ApplicationSystemTestCase
  setup do
    @user_history = user_histories(:one)
  end

  test "visiting the index" do
    visit user_histories_url
    assert_selector "h1", text: "User histories"
  end

  test "should create user history" do
    visit user_histories_url
    click_on "New user history"

    fill_in "Film", with: @user_history.film_id
    fill_in "User profile", with: @user_history.user_profile_id
    click_on "Create User history"

    assert_text "User history was successfully created"
    click_on "Back"
  end

  test "should update User history" do
    visit user_history_url(@user_history)
    click_on "Edit this user history", match: :first

    fill_in "Film", with: @user_history.film_id
    fill_in "User profile", with: @user_history.user_profile_id
    click_on "Update User history"

    assert_text "User history was successfully updated"
    click_on "Back"
  end

  test "should destroy User history" do
    visit user_history_url(@user_history)
    click_on "Destroy this user history", match: :first

    assert_text "User history was successfully destroyed"
  end
end
