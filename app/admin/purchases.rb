ActiveAdmin.register Purchase do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

  actions :all, except: [:destroy, :edit]

  filter :user
  filter :product
  filter :purchase_status, as: :select, input_html: { collection: Purchase.purchase_statuses }

  index do
    id_column
    column :user
    column :product
    column :quantity
    column :amount
    column :purchase_status
    column :created_at
    actions
  end

end
