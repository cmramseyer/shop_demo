class CreatePurchases < ActiveRecord::Migration[6.0]
  def change
    create_table :purchases do |t|
      t.integer :user_id
      t.integer :product_id
      t.integer :quantity
      t.float :amount
      t.integer :purchase_status, default: 0

      t.timestamps
    end
  end
end
