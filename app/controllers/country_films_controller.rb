# frozen_string_literal: true

class CountryFilmsController < ApplicationController
  before_action :set_country_film, only: %i[show edit update destroy]
  before_action :authenticate_user!

  # GET /country_films or /country_films.json
  def index
    @country_films = CountryFilm.all
  end

  # GET /country_films/1 or /country_films/1.json
  def show; end

  # GET /country_films/new
  def new
    @country_film = CountryFilm.new
  end

  # GET /country_films/1/edit
  def edit; end

  # POST /country_films or /country_films.json
  def create
    @country_film = CountryFilm.new(country_film_params)

    respond_to do |format|
      if @country_film.save
        format.html { redirect_to country_film_url(@country_film), notice: "Country film was successfully created." }
        format.json { render :show, status: :created, location: @country_film }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @country_film.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /country_films/1 or /country_films/1.json
  def update
    respond_to do |format|
      if @country_film.update(country_film_params)
        format.html { redirect_to country_film_url(@country_film), notice: "Country film was successfully updated." }
        format.json { render :show, status: :ok, location: @country_film }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @country_film.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /country_films/1 or /country_films/1.json
  def destroy
    @country_film.destroy!

    respond_to do |format|
      format.html { redirect_to country_films_url, notice: "Country film was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_country_film
    @country_film = CountryFilm.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def country_film_params
    params.require(:country_film).permit(:country_id, :film_id)
  end
end
