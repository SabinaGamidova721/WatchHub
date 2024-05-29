# frozen_string_literal: true

require "test_helper"

class CastFilmsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cast_film = cast_films(:one)
  end

  test "should get index" do
    get cast_films_url
    assert_response :success
  end

  test "should get new" do
    get new_cast_film_url
    assert_response :success
  end

  test "should create cast_film" do
    assert_difference("CastFilm.count") do
      post cast_films_url, params: {cast_film: {cast_id: @cast_film.cast_id, film_id: @cast_film.film_id}}
    end

    assert_redirected_to cast_film_url(CastFilm.last)
  end

  test "should show cast_film" do
    get cast_film_url(@cast_film)
    assert_response :success
  end

  test "should get edit" do
    get edit_cast_film_url(@cast_film)
    assert_response :success
  end

  test "should update cast_film" do
    patch cast_film_url(@cast_film), params: {cast_film: {cast_id: @cast_film.cast_id, film_id: @cast_film.film_id}}
    assert_redirected_to cast_film_url(@cast_film)
  end

  test "should destroy cast_film" do
    assert_difference("CastFilm.count", -1) do
      delete cast_film_url(@cast_film)
    end

    assert_redirected_to cast_films_url
  end
end
