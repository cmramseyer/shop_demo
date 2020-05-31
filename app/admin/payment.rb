ActiveAdmin.register Payment do
  actions :all, except: [:destroy, :edit, :new]


  index do
    id_column
    column :order
    column :order_total_amount
    column :credit_card_number
    column :created_at
    actions
  end

  show do
    attributes_table do
      row :id
      row :order
      row :order_total_amount
      row :credit_card_number
      row :created_at
    end
  end

end
