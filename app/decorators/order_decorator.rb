class OrderDecorator < Draper::Decorator
  delegate_all

  def link_to_view
    h.link_to "View", h.user_my_order_path(h.current_user, object)
  end

  def link_to_pay
    h.link_to "Pay now!", h.new_order_payment_path(object), class: "btn btn-primary" if object.pending_payment?
  end

end
