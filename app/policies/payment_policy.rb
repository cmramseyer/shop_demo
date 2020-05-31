class PaymentPolicy < ApplicationPolicy
  def new_payment?
    record.user == user
  end
end