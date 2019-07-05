class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.integer :category_id
      t.float :price

      t.timestamps
    end
  end
end
