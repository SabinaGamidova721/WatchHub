# frozen_string_literal: true

ActiveAdmin.register Cast do
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :first_name, :last_name, :date_of_birth, :description, :role_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:first_name, :last_name, :date_of_birth, :description, :role_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  remove_filter :avatar_attachment, :avatar_blob
  remove_filter :cast_films
end
