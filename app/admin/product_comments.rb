ActiveAdmin.register ProductComment do

  index do
    id_column
    column :product
    column :user
    column :text
    column "Alert?" do |product_comment|
      product_comment.alert?
    end
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
