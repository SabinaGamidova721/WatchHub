# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :show_header
  before_action :show_footer

  around_action :switch_locale

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

  def switch_locale(&)
    locale = locale_from_url || I18n.default_locale
    I18n.with_locale(locale, &)
  end

  def locale_from_url
    locale = params[:locale]

    locale if I18n.available_locales.map(&:to_s).include?(locale)
  end

  def default_url_options
    {locale: I18n.locale}
  end
end
