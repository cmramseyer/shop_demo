class OrdersController < ApplicationController

  def new
    @order_info = OrderInfo.new(@session_cart)
    @credit_cards = FakeCreditCardApiGem.index
  end

  def show
    @order = Order.find[params[:id]]
  end

  def create
    @order = Service::OrderCreator.new(@session_cart).call
    # the order has been created, lets clean the session cart
    @session_cart.clean!
    redirect_to new_order_payment_path(@order), notice: "Good!"
  end

end
