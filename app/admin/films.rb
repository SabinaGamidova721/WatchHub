# frozen_string_literal: true

ActiveAdmin.register Film do
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :title, :slogan, :link, :release_year, :maturity_rating_id, :duration, :description
  #
  # or
  #
  # permit_params do
  #   permitted = [:title, :slogan, :link, :release_year, :maturity_rating_id, :duration, :description]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  remove_filter :avatar_attachment, :avatar_blob
end
