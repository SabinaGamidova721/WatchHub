# frozen_string_literal: true

require "application_system_test_case"

class CastsTest < ApplicationSystemTestCase
  setup do
    @cast = casts(:one)
  end

  test "visiting the index" do
    visit casts_url
    assert_selector "h1", text: "Casts"
  end

  test "should create cast" do
    visit casts_url
    click_on "New cast"

    fill_in "Date of birth", with: @cast.date_of_birth
    fill_in "Description", with: @cast.description
    fill_in "First name", with: @cast.first_name
    fill_in "Last name", with: @cast.last_name
    fill_in "Role", with: @cast.role_id
    click_on "Create Cast"

    assert_text "Cast was successfully created"
    click_on "Back"
  end

  test "should update Cast" do
    visit cast_url(@cast)
    click_on "Edit this cast", match: :first

    fill_in "Date of birth", with: @cast.date_of_birth
    fill_in "Description", with: @cast.description
    fill_in "First name", with: @cast.first_name
    fill_in "Last name", with: @cast.last_name
    fill_in "Role", with: @cast.role_id
    click_on "Update Cast"

    assert_text "Cast was successfully updated"
    click_on "Back"
  end

  test "should destroy Cast" do
    visit cast_url(@cast)
    click_on "Destroy this cast", match: :first

    assert_text "Cast was successfully destroyed"
  end
end
