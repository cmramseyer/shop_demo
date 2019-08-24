class ProductsController < ApplicationController
  def show
    @product = Product.find(product_params[:id])
  end

  private
  def product_params
    params.permit(:id)
  end
end
