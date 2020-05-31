class MyOrdersController < ApplicationController
  def index
    @orders = current_user.orders.sort_by(&:id)
  end

  def show
    @order = Order.find(params[:id])
    @payment = @order.payment || NilPayment.new
  end
end
