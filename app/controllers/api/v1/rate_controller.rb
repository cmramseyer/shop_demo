module Api
  module V1
    class RateController < ApiController
      def create
        @product = Product.find(params[:product_id])
        rating = params[:rating]
        Service::RateProduct.call(rating: rating, product: @product)
        @average_rating = @product.decorate.average_rating
        render json: {rating: @average_rating}, status: :ok
      end
    end
  end
end