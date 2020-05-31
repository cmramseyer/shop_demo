class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.integer :order_status
      t.integer :payment_id
      t.integer :user_id
      t.float :total_amount 
      t.timestamps
    end
  end
end
