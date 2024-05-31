# frozen_string_literal: true

class UserWatchLatersController < ApplicationController
  before_action :set_user_watch_later, only: %i[show edit update destroy]
  before_action :authenticate_user!

  # GET /user_watch_laters or /user_watch_laters.json
  def index
    @user_watch_laters = UserWatchLater.all
  end

  # GET /user_watch_laters/1 or /user_watch_laters/1.json
  def show; end

  # GET /user_watch_laters/new
  def new
    @user_watch_later = UserWatchLater.new
  end

  # GET /user_watch_laters/1/edit
  def edit; end

  # POST /user_watch_laters or /user_watch_laters.json
  def create
    @user_watch_later = UserWatchLater.new(user_watch_later_params)

    respond_to do |format|
      if @user_watch_later.save
        format.html {
          redirect_to user_watch_later_url(@user_watch_later), notice: "User watch later was successfully created."
        }
        format.json { render :show, status: :created, location: @user_watch_later }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @user_watch_later.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_watch_laters/1 or /user_watch_laters/1.json
  def update
    respond_to do |format|
      if @user_watch_later.update(user_watch_later_params)
        format.html {
          redirect_to user_watch_later_url(@user_watch_later), notice: "User watch later was successfully updated."
        }
        format.json { render :show, status: :ok, location: @user_watch_later }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @user_watch_later.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_watch_laters/1 or /user_watch_laters/1.json
  def destroy
    @user_watch_later.destroy!

    respond_to do |format|
      format.html { redirect_to user_watch_laters_url, notice: "User watch later was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_user_watch_later
    @user_watch_later = UserWatchLater.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def user_watch_later_params
    params.require(:user_watch_later).permit(:user_profile_id, :film_id)
  end
end
