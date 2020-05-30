class SessionCartController < ApplicationController
  def index
    @products = @session_cart.products
  end
  def create
    @product = Product.find(params[:product_id])
    # initialized in application_controller.rb
    @session_cart.add(@product)
    redirect_to product_path(@product)
  end
end
