class Purchase < ApplicationRecord
  belongs_to :user
  belongs_to :product

  enum purchase_status: {
    "pending": 0,
    "done": 1
    }

  def calculate_amount
    product.price * quantity
  end

end
