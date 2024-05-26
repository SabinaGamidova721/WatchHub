require "test_helper"

class GenreFilmsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @genre_film = genre_films(:one)
  end

  test "should get index" do
    get genre_films_url
    assert_response :success
  end

  test "should get new" do
    get new_genre_film_url
    assert_response :success
  end

  test "should create genre_film" do
    assert_difference("GenreFilm.count") do
      post genre_films_url, params: { genre_film: { film_id: @genre_film.film_id, genre_id: @genre_film.genre_id } }
    end

    assert_redirected_to genre_film_url(GenreFilm.last)
  end

  test "should show genre_film" do
    get genre_film_url(@genre_film)
    assert_response :success
  end

  test "should get edit" do
    get edit_genre_film_url(@genre_film)
    assert_response :success
  end

  test "should update genre_film" do
    patch genre_film_url(@genre_film), params: { genre_film: { film_id: @genre_film.film_id, genre_id: @genre_film.genre_id } }
    assert_redirected_to genre_film_url(@genre_film)
  end

  test "should destroy genre_film" do
    assert_difference("GenreFilm.count", -1) do
      delete genre_film_url(@genre_film)
    end

    assert_redirected_to genre_films_url
  end
end
