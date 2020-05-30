class CleanSessionCartController < ApplicationController
  def create
    @session_cart.clean!
    redirect_to session_cart_index_path
  end
end
