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

end
