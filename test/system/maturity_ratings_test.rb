require "application_system_test_case"

class MaturityRatingsTest < ApplicationSystemTestCase
  setup do
    @maturity_rating = maturity_ratings(:one)
  end

  test "visiting the index" do
    visit maturity_ratings_url
    assert_selector "h1", text: "Maturity ratings"
  end

  test "should create maturity rating" do
    visit maturity_ratings_url
    click_on "New maturity rating"

    fill_in "Description", with: @maturity_rating.description
    fill_in "Title", with: @maturity_rating.title
    click_on "Create Maturity rating"

    assert_text "Maturity rating was successfully created"
    click_on "Back"
  end

  test "should update Maturity rating" do
    visit maturity_rating_url(@maturity_rating)
    click_on "Edit this maturity rating", match: :first

    fill_in "Description", with: @maturity_rating.description
    fill_in "Title", with: @maturity_rating.title
    click_on "Update Maturity rating"

    assert_text "Maturity rating was successfully updated"
    click_on "Back"
  end

  test "should destroy Maturity rating" do
    visit maturity_rating_url(@maturity_rating)
    click_on "Destroy this maturity rating", match: :first

    assert_text "Maturity rating was successfully destroyed"
  end
end
