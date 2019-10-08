  class SearchableProduct

  include ActionView::Helpers::UrlHelper
  delegate :url_helpers, to: 'Rails.application.routes'
  delegate :created_at, to: :@product

  def initialize(product)
    @product = product
  end

  def type
    "Product"
  end

  def title
    link_to @product.name, product_path
  end

  def overview
    link_to @product.description_overview, product_path, data: {toogle: 'tooltip', placement: 'top'}, title: @product.description
  end

  def product_path
    url_helpers.product_path(@product)
  end
end