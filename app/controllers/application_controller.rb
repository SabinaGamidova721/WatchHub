# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :show_header
  before_action :show_footer

  private

  def show_header
    excluded_paths = [
      "/",
      "/users/sign_in",
      "/user_profiles/new",
      "/users/password/edit",
      "/users/password/new",
      "/users/confirmation"
    ]

    @show_header = !excluded_paths.include?(request.path)
  end

  def show_footer
    excluded_paths = [
      "/users/sign_in",
      "/user_profiles/new",
      "/users/password",
      "/users/confirmation"
    ]

    @show_footer = excluded_paths.none? {|path| request.path.include?(path) }
  end
end
