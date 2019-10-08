  class SearchableProduct

  include ActionView::Helpers::UrlHelper
  delegate :url_helpers, to: 'Rails.application.routes'
  delegate :created_at, to: :@product

  def initialize(product)
    @product = product
  end

  def type
    "<i class='fa #{@product.category_icon_name} fa-3x'></i>".html_safe
  end

  def title
    link_to @product.name, product_path
  end

  def overview
    link_to @product.description_overview, product_path
  end

  def product_path
    url_helpers.product_path(@product)
  end
end