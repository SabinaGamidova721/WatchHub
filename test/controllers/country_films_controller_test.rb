require "test_helper"

class CountryFilmsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @country_film = country_films(:one)
  end

  test "should get index" do
    get country_films_url
    assert_response :success
  end

  test "should get new" do
    get new_country_film_url
    assert_response :success
  end

  test "should create country_film" do
    assert_difference("CountryFilm.count") do
      post country_films_url, params: { country_film: { country_id: @country_film.country_id, film_id: @country_film.film_id } }
    end

    assert_redirected_to country_film_url(CountryFilm.last)
  end

  test "should show country_film" do
    get country_film_url(@country_film)
    assert_response :success
  end

  test "should get edit" do
    get edit_country_film_url(@country_film)
    assert_response :success
  end

  test "should update country_film" do
    patch country_film_url(@country_film), params: { country_film: { country_id: @country_film.country_id, film_id: @country_film.film_id } }
    assert_redirected_to country_film_url(@country_film)
  end

  test "should destroy country_film" do
    assert_difference("CountryFilm.count", -1) do
      delete country_film_url(@country_film)
    end

    assert_redirected_to country_films_url
  end
end
