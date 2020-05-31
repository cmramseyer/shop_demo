class ApplicationController < ActionController::Base
	before_action :authenticate_user!, :set_raven_context

  before_action :init_session_cart

  def set_raven_context
    Raven.user_context(id: session[:current_user_id]) # or anything else in session
    Raven.extra_context(params: params.to_unsafe_h, url: request.url)
  end

  def init_session_cart
    @session_cart = SessionCart.new(session, current_user)
  end
end
