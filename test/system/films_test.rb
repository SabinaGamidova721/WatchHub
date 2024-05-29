# frozen_string_literal: true

require "application_system_test_case"

class FilmsTest < ApplicationSystemTestCase
  setup do
    @film = films(:one)
  end

  test "visiting the index" do
    visit films_url
    assert_selector "h1", text: "Films"
  end

  test "should create film" do
    visit films_url
    click_on "New film"

    fill_in "Description", with: @film.description
    fill_in "Duration", with: @film.duration
    fill_in "Link", with: @film.link
    fill_in "Maturity rating", with: @film.maturity_rating_id
    fill_in "Release year", with: @film.release_year
    fill_in "Slogan", with: @film.slogan
    fill_in "Title", with: @film.title
    click_on "Create Film"

    assert_text "Film was successfully created"
    click_on "Back"
  end

  test "should update Film" do
    visit film_url(@film)
    click_on "Edit this film", match: :first

    fill_in "Description", with: @film.description
    fill_in "Duration", with: @film.duration
    fill_in "Link", with: @film.link
    fill_in "Maturity rating", with: @film.maturity_rating_id
    fill_in "Release year", with: @film.release_year
    fill_in "Slogan", with: @film.slogan
    fill_in "Title", with: @film.title
    click_on "Update Film"

    assert_text "Film was successfully updated"
    click_on "Back"
  end

  test "should destroy Film" do
    visit film_url(@film)
    click_on "Destroy this film", match: :first

    assert_text "Film was successfully destroyed"
  end
end
