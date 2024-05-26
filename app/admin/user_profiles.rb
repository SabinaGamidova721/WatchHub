ActiveAdmin.register UserProfile do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :nickname, :date_of_birth, :date_of_registration, :user_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:nickname, :date_of_birth, :date_of_registration, :user_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  #

    remove_filter :avatar_attachment, :avatar_blob
end
