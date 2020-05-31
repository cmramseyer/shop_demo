class CreateOrdersProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :orders_products, id: false do |t|
      t.integer :product_id
      t.integer :order_id
    end
  end
end
