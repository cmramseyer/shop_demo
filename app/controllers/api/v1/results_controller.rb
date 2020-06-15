module Api
  module V1
    class ResultsController < ActionController::API
      respond_to :json
      def index
        @keywords = params[:keywords]
        search_query = SearchQueryApi.new(@keywords)
        elastic_records = search_query.records
        render json: elastic_records
      end
    end
  end
end