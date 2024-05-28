class UserProfilesController < ApplicationController
  before_action :set_user_profile, only: %i[ show edit update destroy ]

  # GET /user_profiles or /user_profiles.json
  def index
    @user_profiles = UserProfile.all
  end

  # GET /user_profiles/1 or /user_profiles/1.json
  def show
  end

  # GET /user_profiles/new
  def new
    @user_profile = UserProfile.new
    @user_profile.date_of_registration = Time.zone.now
    @user_profile.build_user
    @minimum_password_length = 6
  end

  # GET /user_profiles/1/edit
  def edit
  end

  # POST /user_profiles or /user_profiles.json
  def create
    @user_profile = UserProfile.new(user_profile_params)
    respond_to do |format|
      if @user_profile.save
        session[:user_id] = @user_profile.id
        format.html { redirect_to home_path, notice: "User profile was successfully created" }
        format.json { render :show, status: :created, location: @user_profile }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @user_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_profiles/1 or /user_profiles/1.json
  def update
      respond_to do |format|
        if @user_profile.update(user_profile_params)
          format.html { redirect_to edit_user_profile_path(@user_profile), notice: "User profile was successfully updated." }
          format.json { render :show, status: :ok, location: @user_profile }
        else
          format.html { render :edit, status: :unprocessable_entity }
          format.json { render json: @user_profile.errors, status: :unprocessable_entity }
        end
      end
  end
  

  # DELETE /user_profiles/1 or /user_profiles/1.json
  def destroy
    @user_profile.user.destroy!
    @user_profile.destroy!

    respond_to do |format|
      format.html { redirect_to root_path, notice: "User profile was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_profile
      @user_profile = UserProfile.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_profile_params
      # debugger
      # return {} unless params[:user_profile].present?
      # if params[:user_profile][:user_attributes].present? && params[:user_profile][:user_attributes][:password].present? && params[:user_profile][:user_attributes][:password_confirmation].present?
      #   permitted_params = [:nickname, :date_of_birth, :date_of_registration, :avatar, user_attributes: [:id, :email, :password, :password_confirmation]]
      # elsif params[:user_profile][:user_attributes].present? && params[:user_profile][:user_attributes][:password].present?
      #   permitted_params = [:nickname, :date_of_birth, :date_of_registration, :avatar, user_attributes: [:id, :email, :password]]
      # else
      #   permitted_params = [:nickname, :date_of_birth, :date_of_registration, :avatar, user_attributes: [:id, :email]]
      # end
      # params.require(:user_profile).permit(permitted_params)
      # debugger

      # return {} unless params[:user_profile].present?
      # if params[:user_profile][:user_attributes].present? && params[:user_profile][:user_attributes][:password].present?
      #   permitted_params = [:nickname, :date_of_birth, :date_of_registration, :avatar, user_attributes: [:id, :email, :password, :password_confirmation]]
      # else
      #   permitted_params = [:nickname, :date_of_birth, :date_of_registration, :avatar, user_attributes: [:id, :email]]
      # end
      # params.require(:user_profile).permit(permitted_params)
      # debugger

        if params[:user_profile].present?
          if params[:user_profile][:user_attributes].present? && params[:user_profile][:user_attributes][:password].present?
            permitted_params = [:nickname, :date_of_birth, :date_of_registration, :avatar, user_attributes: [:id, :email, :password]]
          else
            permitted_params = [:nickname, :date_of_birth, :date_of_registration, :avatar, user_attributes: [:id, :email]]
          end
          params.require(:user_profile).permit(permitted_params)
        else
          {}
        end
    end
end
