class SearchableProductComment

  include ActionView::Helpers::UrlHelper
  delegate :url_helpers, to: 'Rails.application.routes'
  delegate :created_at, to: :@product_comment

  def initialize(product_comment)
    @product_comment = product_comment
  end

  def type
    "Comment"
  end

  def title
  end

  def overview
    @product_comment.text
  end

  def product_path
    url_helpers.product_path(@product_comment.product)
  end
end