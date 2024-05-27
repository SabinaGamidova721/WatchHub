# frozen_string_literal: true

json.array! @user_watch_laters, partial: "user_watch_laters/user_watch_later", as: :user_watch_later
