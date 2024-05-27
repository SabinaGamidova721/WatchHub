# frozen_string_literal: true

class MaturityRatingsController < ApplicationController
  before_action :set_maturity_rating, only: %i[show edit update destroy]

  # GET /maturity_ratings or /maturity_ratings.json
  def index
    @maturity_ratings = MaturityRating.all
  end

  # GET /maturity_ratings/1 or /maturity_ratings/1.json
  def show; end

  # GET /maturity_ratings/new
  def new
    @maturity_rating = MaturityRating.new
  end

  # GET /maturity_ratings/1/edit
  def edit; end

  # POST /maturity_ratings or /maturity_ratings.json
  def create
    @maturity_rating = MaturityRating.new(maturity_rating_params)

    respond_to do |format|
      if @maturity_rating.save
        format.html {
          redirect_to maturity_rating_url(@maturity_rating), notice: "Maturity rating was successfully created."
        }
        format.json { render :show, status: :created, location: @maturity_rating }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @maturity_rating.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /maturity_ratings/1 or /maturity_ratings/1.json
  def update
    respond_to do |format|
      if @maturity_rating.update(maturity_rating_params)
        format.html {
          redirect_to maturity_rating_url(@maturity_rating), notice: "Maturity rating was successfully updated."
        }
        format.json { render :show, status: :ok, location: @maturity_rating }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @maturity_rating.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /maturity_ratings/1 or /maturity_ratings/1.json
  def destroy
    @maturity_rating.destroy!

    respond_to do |format|
      format.html { redirect_to maturity_ratings_url, notice: "Maturity rating was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_maturity_rating
    @maturity_rating = MaturityRating.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def maturity_rating_params
    params.require(:maturity_rating).permit(:title, :description)
  end
end
