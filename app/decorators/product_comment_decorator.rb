class ProductCommentDecorator < Draper::Decorator
  delegate_all

  def likes_legend
    if object.likes == 0
      "be the first to like this comment!"
    else
      "#{object.likes} likes"
    end
  end

  def likes_badge
    "<span class='badge badge-primary'>
      <i class='fa fa-thumbs-up'></i>
      <span>#{object.likes}</span>
    </span>".html_safe
  end


end
