class ProductDecorator < Draper::Decorator
  delegate_all

  def average_rating_badge
    if object.average_rating == 0
      value = "-"
    else
      value = object.average_rating.round(1).to_s
    end

    "<span class='badge badge-primary'>
      <i id='rating-star' class='fa fa-star'></i>
      <span id='product-average-rating'>#{value}</span>
    </span>".html_safe
  end

  def add_to_cart
    h.link_to "Add to cart", h.session_cart_index_path(product_id: object.id), class: "btn btn-primary", method: :post, remote: true
  end

end
