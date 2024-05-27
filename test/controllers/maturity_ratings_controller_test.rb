# frozen_string_literal: true

require "test_helper"

class MaturityRatingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @maturity_rating = maturity_ratings(:one)
  end

  test "should get index" do
    get maturity_ratings_url
    assert_response :success
  end

  test "should get new" do
    get new_maturity_rating_url
    assert_response :success
  end

  test "should create maturity_rating" do
    assert_difference("MaturityRating.count") do
      post maturity_ratings_url,
           params: {maturity_rating: {description: @maturity_rating.description, title: @maturity_rating.title}}
    end

    assert_redirected_to maturity_rating_url(MaturityRating.last)
  end

  test "should show maturity_rating" do
    get maturity_rating_url(@maturity_rating)
    assert_response :success
  end

  test "should get edit" do
    get edit_maturity_rating_url(@maturity_rating)
    assert_response :success
  end

  test "should update maturity_rating" do
    patch maturity_rating_url(@maturity_rating),
          params: {maturity_rating: {description: @maturity_rating.description, title: @maturity_rating.title}}
    assert_redirected_to maturity_rating_url(@maturity_rating)
  end

  test "should destroy maturity_rating" do
    assert_difference("MaturityRating.count", -1) do
      delete maturity_rating_url(@maturity_rating)
    end

    assert_redirected_to maturity_ratings_url
  end
end
