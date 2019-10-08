class PurchaseDecorator < Draper::Decorator
  delegate_all

  def status_label
    if object.pending?
      "<span class='badge badge-warning'>Pending</span>".html_safe
    else
      "<span class='badge badge-success'>Done</span>".html_safe
    end
  end

end
