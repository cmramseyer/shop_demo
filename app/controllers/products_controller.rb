class ProductsController < ApplicationController
  def show
    @product = Product.find(product_params[:id])
    @comments = @product.product_comments
    # @session_cart initialized in application_controller.rb
  end

  private
  def product_params
    params.permit(:id)
  end
end
