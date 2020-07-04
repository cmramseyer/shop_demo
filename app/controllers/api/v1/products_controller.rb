module Api
  module V1
    class ProductsController < ApiController
      def index
        respond_with ProductBlueprint.render(Product.all, view: :full) 
      end

      def show
        @product = Product.find(params[:id])
        respond_with ProductBlueprint.render(@product, view: :full) 
      end
    end
  end
end