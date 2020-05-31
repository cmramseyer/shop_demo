ActiveAdmin.register Order do
  actions :all, except: [:destroy, :edit, :new]

  filter :user
  filter :product
  filter :order_status, as: :select, input_html: { collection: Order.order_statuses }

  index do
    id_column
    column :user
    column :products
    column :total_amount
    column :order_status
    column :created_at
    actions
  end

end
