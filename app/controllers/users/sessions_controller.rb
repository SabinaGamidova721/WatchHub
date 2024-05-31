# frozen_string_literal: true

module Users
  class SessionsController < Devise::SessionsController
    # before_action :configure_sign_in_params, only: [:create]

    # GET /resource/sign_in


    # POST /resource/sign_in
    def create
      user = User.find_by(email: params[:user][:email])
      if user&.valid_password?(params[:user][:password])
        sign_in(user)
        session[:user_id] = user.id
        redirect_to home_path
      else
        flash[:alert] = "Invalid email or password"
        redirect_to new_user_session_path
      end
    end

    # DELETE /resource/sign_out
    def destroy
      sign_out(current_user)
      redirect_to root_path and return
    end

    # def after_sign_out_path_for(resource_or_scope)
    #   home_path
    # end

    # protected

    # If you have extra params to permit, append them to the sanitizer.
    # def configure_sign_in_params
    #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
    # end
  end
end
