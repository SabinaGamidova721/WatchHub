# frozen_string_literal: true

module ApplicationHelper
  def format_duration(minutes)
    hours = minutes / 60
    minutes %= 60
    "#{hours} hours #{minutes} minutes"
  end

  def active_class(link_path)
    current_page?(link_path) ? 'active' : ''
  end
end
