class AddCreditCardNumberAndDateTimeToPurchase < ActiveRecord::Migration[6.0]
  def change
    add_column :purchases, :credit_card_number, :string
    add_column :purchases, :paid_at, :datetime
  end
end
