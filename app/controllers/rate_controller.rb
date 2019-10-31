class RateController < ApplicationController
  def create
    @product = Product.find(params[:product_id])
    rating = params[:rating]
    Service::RateProduct.call(rating: rating, product: @product)
    @average_rating = @product.decorate.average_rating
  end
end
