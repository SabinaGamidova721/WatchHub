# frozen_string_literal: true

json.array! @user_likes, partial: "user_likes/user_like", as: :user_like
