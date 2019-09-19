class SearchableComment

  include ActionView::Helpers::UrlHelper
  delegate :url_helpers, to: 'Rails.application.routes'
  delegate :created_at, to: :@comment

  def initialize(comment)
    @comment = comment
  end

  def type
    "Comment"
  end

  def title
  end

  def overview
    @comment.text
  end

  def product_path
    url_helpers.product_path(@comment.product)
  end
end