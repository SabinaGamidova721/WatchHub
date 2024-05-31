# frozen_string_literal: true

module ApplicationHelper
  def format_duration(minutes)
    hours = minutes / 60
    minutes %= 60
    "#{hours} #{t('time.hours')} #{minutes} #{t('time.minutes')}"
  end

  def active_class(link_path)
    current_page?(link_path) ? "active" : ""
  end

  def asset_exists?(path)
    if Rails.application.assets
      Rails.application.assets.find_asset(path).present?
    else
      Rails.application.config.assets.precompile.include?(path)
    end
  end
end
