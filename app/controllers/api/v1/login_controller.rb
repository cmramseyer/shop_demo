module Api
  module V1
    class LoginController < ApiController

      skip_before_action :authenticate_request, on: [:create]

      def create
        auth = AuthenticateApiUser.new(login_params[:email], login_params[:password]).call

        if auth.token
         render json: { auth_token: auth.token }
        else
         render json: { error: 'Something went wrong' }, status: :unauthorized
        end

      rescue RuntimeError => exc
        render json: { error: exc.message }, status: :unauthorized
      end

      private

      def login_params
        params.permit(:email, :password)
      end
    end
  end
end