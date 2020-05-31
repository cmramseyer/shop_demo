class Payment < ApplicationRecord
  belongs_to :order
  delegate :total_amount, to: :order, prefix: true, allow_nil: true
end
