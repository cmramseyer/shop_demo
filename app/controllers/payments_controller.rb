class PaymentsController < ApplicationController

  def new
    @order = Order.find(params[:order_id])
    @credit_cards = FakeCreditCardApiGem.index
  end

  def create
    @order = Order.find(params[:order_id])
    number = params[:number]
    code = params[:code]
    @service = Service::PaymentCreator.new(@order, number, code)

    if @service.call
      redirect_to root_path, notice: "Good!"
    else
      redirect_to root_path, alert: @service.exception.message
    end
  end

end
