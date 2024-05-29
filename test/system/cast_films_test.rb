# frozen_string_literal: true

require "application_system_test_case"

class CastFilmsTest < ApplicationSystemTestCase
  setup do
    @cast_film = cast_films(:one)
  end

  test "visiting the index" do
    visit cast_films_url
    assert_selector "h1", text: "Cast films"
  end

  test "should create cast film" do
    visit cast_films_url
    click_on "New cast film"

    fill_in "Cast", with: @cast_film.cast_id
    fill_in "Film", with: @cast_film.film_id
    click_on "Create Cast film"

    assert_text "Cast film was successfully created"
    click_on "Back"
  end

  test "should update Cast film" do
    visit cast_film_url(@cast_film)
    click_on "Edit this cast film", match: :first

    fill_in "Cast", with: @cast_film.cast_id
    fill_in "Film", with: @cast_film.film_id
    click_on "Update Cast film"

    assert_text "Cast film was successfully updated"
    click_on "Back"
  end

  test "should destroy Cast film" do
    visit cast_film_url(@cast_film)
    click_on "Destroy this cast film", match: :first

    assert_text "Cast film was successfully destroyed"
  end
end
