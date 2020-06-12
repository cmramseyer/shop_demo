module Api
  module V1
    class ProductsController < ActionController::API
      respond_to :json
      def index
        respond_with Product.all.to_json
      end

      def show
        @product = Product.find(params[:id])
        respond_with @product.to_json
      end
    end
  end
end