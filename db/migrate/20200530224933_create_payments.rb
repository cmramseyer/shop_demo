class CreatePayments < ActiveRecord::Migration[6.0]
  def change
    create_table :payments do |t|
      t.integer :order_id
      t.string :credit_card_number

      t.timestamps
    end
  end
end
