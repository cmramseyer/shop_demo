ActiveAdmin.register Comment do

  index do
    id_column
    column :product
    column :user
    column :text
    actions
  end

  show do
    attributes_table do
      row :id
      row :product
      row :user
      row :text
    end
  end

end
