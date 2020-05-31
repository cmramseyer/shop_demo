class MyOrderPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      user.orders.sort_by(&:id)
    end
  end

  def show?
    record.user == user
  end
end