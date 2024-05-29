# frozen_string_literal: true

class CastFilmsController < ApplicationController
  before_action :set_cast_film, only: %i[show edit update destroy]

  # GET /cast_films or /cast_films.json
  def index
    @cast_films = CastFilm.all
  end

  # GET /cast_films/1 or /cast_films/1.json
  def show; end

  # GET /cast_films/new
  def new
    @cast_film = CastFilm.new
  end

  # GET /cast_films/1/edit
  def edit; end

  # POST /cast_films or /cast_films.json
  def create
    @cast_film = CastFilm.new(cast_film_params)

    respond_to do |format|
      if @cast_film.save
        format.html { redirect_to cast_film_url(@cast_film), notice: "Cast film was successfully created." }
        format.json { render :show, status: :created, location: @cast_film }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @cast_film.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cast_films/1 or /cast_films/1.json
  def update
    respond_to do |format|
      if @cast_film.update(cast_film_params)
        format.html { redirect_to cast_film_url(@cast_film), notice: "Cast film was successfully updated." }
        format.json { render :show, status: :ok, location: @cast_film }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @cast_film.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cast_films/1 or /cast_films/1.json
  def destroy
    @cast_film.destroy!

    respond_to do |format|
      format.html { redirect_to cast_films_url, notice: "Cast film was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_cast_film
    @cast_film = CastFilm.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def cast_film_params
    params.require(:cast_film).permit(:cast_id, :film_id)
  end
end
