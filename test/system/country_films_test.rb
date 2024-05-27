# frozen_string_literal: true

require "application_system_test_case"

class CountryFilmsTest < ApplicationSystemTestCase
  setup do
    @country_film = country_films(:one)
  end

  test "visiting the index" do
    visit country_films_url
    assert_selector "h1", text: "Country films"
  end

  test "should create country film" do
    visit country_films_url
    click_on "New country film"

    fill_in "Country", with: @country_film.country_id
    fill_in "Film", with: @country_film.film_id
    click_on "Create Country film"

    assert_text "Country film was successfully created"
    click_on "Back"
  end

  test "should update Country film" do
    visit country_film_url(@country_film)
    click_on "Edit this country film", match: :first

    fill_in "Country", with: @country_film.country_id
    fill_in "Film", with: @country_film.film_id
    click_on "Update Country film"

    assert_text "Country film was successfully updated"
    click_on "Back"
  end

  test "should destroy Country film" do
    visit country_film_url(@country_film)
    click_on "Destroy this country film", match: :first

    assert_text "Country film was successfully destroyed"
  end
end
