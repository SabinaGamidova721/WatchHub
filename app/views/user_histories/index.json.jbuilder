# frozen_string_literal: true

json.array! @user_histories, partial: "user_histories/user_history", as: :user_history
