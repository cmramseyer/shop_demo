class Order < ApplicationRecord
  has_and_belongs_to_many :products
  belongs_to :payment, optional: true
  belongs_to :user
  enum order_status: {
    "pending_payment": 0,
    "finished": 1
  }
end
