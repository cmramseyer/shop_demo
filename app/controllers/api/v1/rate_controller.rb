module Api
  module V1
    class RateController < ActionController::API
      respond_to :json
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