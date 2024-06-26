# frozen_string_literal: true

class CastsController < ApplicationController
  before_action :set_cast, only: %i[show edit update destroy]
  before_action :authenticate_user!

  # GET /casts or /casts.json
  def index
    @casts = Cast.all
  end

  # GET /casts/1 or /casts/1.json
  def show
    @top_films = @cast.films.left_joins(:ratings).group(:id).order(Arel.sql("COALESCE(AVG(ratings.score), 0) DESC, COUNT(ratings.id) DESC")).limit(6)
    @all_films = @cast.films.includes(:genres).order(release_date: :desc)
  end

  # GET /casts/new
  def new
    @cast = Cast.new
  end

  # GET /casts/1/edit
  def edit; end

  # POST /casts or /casts.json
  def create
    @cast = Cast.new(cast_params)

    respond_to do |format|
      if @cast.save
        format.html { redirect_to cast_url(@cast), notice: "Cast was successfully created." }
        format.json { render :show, status: :created, location: @cast }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @cast.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /casts/1 or /casts/1.json
  def update
    respond_to do |format|
      if @cast.update(cast_params)
        format.html { redirect_to cast_url(@cast), notice: "Cast was successfully updated." }
        format.json { render :show, status: :ok, location: @cast }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @cast.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /casts/1 or /casts/1.json
  def destroy
    @cast.destroy!

    respond_to do |format|
      format.html { redirect_to casts_url, notice: "Cast was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_cast
    @cast = Cast.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def cast_params
    params.require(:cast).permit(:first_name, :last_name, :date_of_birth, :description, :role_id, :avatar)
  end
end
