module Api
  module V1
    class ApiController < ActionController::API
      respond_to :json
      before_action :authenticate_request

      rescue_from ApiError, with: :api_error
      rescue_from Exception, with: :exception_error

      private

      def json_request?
        request.format.json?
      end
      # Use api_user Devise scope for JSON access
      def authenticate_request
        @current_user = AuthorizeApiRequest.new(request.headers).call
        render json: { error: 'Not Authorized' }, status: 401 unless @current_user
      end

      def api_error(exception)
        render json: { error: exception.message }, status: 500
      end

      def exception_error(exception)
        render json: { message: "unhandled error", error: exception.message }, status: 500
      end
    end
  end
end