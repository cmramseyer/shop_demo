class Rating < ApplicationRecord
  belongs_to :product
  validates :rating, presence: true
end
