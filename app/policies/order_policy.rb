class OrderPolicy < ApplicationPolicy
  class Scope
    def resolve
      user.orders.sort_by(&:id)
    end
  end

  def show?
    record.user == user
  end

  def new_payment?
    record.user == user
  end
end