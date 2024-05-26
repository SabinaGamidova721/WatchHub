require "application_system_test_case"

class GenreFilmsTest < ApplicationSystemTestCase
  setup do
    @genre_film = genre_films(:one)
  end

  test "visiting the index" do
    visit genre_films_url
    assert_selector "h1", text: "Genre films"
  end

  test "should create genre film" do
    visit genre_films_url
    click_on "New genre film"

    fill_in "Film", with: @genre_film.film_id
    fill_in "Genre", with: @genre_film.genre_id
    click_on "Create Genre film"

    assert_text "Genre film was successfully created"
    click_on "Back"
  end

  test "should update Genre film" do
    visit genre_film_url(@genre_film)
    click_on "Edit this genre film", match: :first

    fill_in "Film", with: @genre_film.film_id
    fill_in "Genre", with: @genre_film.genre_id
    click_on "Update Genre film"

    assert_text "Genre film was successfully updated"
    click_on "Back"
  end

  test "should destroy Genre film" do
    visit genre_film_url(@genre_film)
    click_on "Destroy this genre film", match: :first

    assert_text "Genre film was successfully destroyed"
  end
end
