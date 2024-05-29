# frozen_string_literal: true

module ApplicationHelper
  def format_duration(minutes)
    hours = minutes / 60
    minutes %= 60
    "#{hours} hours #{minutes} minutes"
  end

  def asset_exists?(path)
    if Rails.application.assets
      Rails.application.assets.find_asset(path).present?
    else
      Rails.application.config.assets.precompile.include?(path)
    end
  end
end
