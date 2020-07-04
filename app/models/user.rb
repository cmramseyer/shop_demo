class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, 
         :recoverable,
         :rememberable,
         :validatable

  has_many :reviews
  has_many :product_comments

  has_many :orders

  def is_admin?
    true
  end
end
