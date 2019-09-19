ActiveAdmin.register Review do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :title, :content, :user_id, :product_id
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

  index do
    id_column
    column :title
    column :content
    column :product
    column :user
    column "Alert?" do |review|
      review.include_alert_word?
    end
    column :created_at
    column :updated_at
    actions
  end

end
