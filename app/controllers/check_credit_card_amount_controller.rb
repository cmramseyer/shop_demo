class CheckCreditCardAmountController < ApplicationController
  def index
    button_action = credit_card_amount_params[:commit]
    number = credit_card_amount_params[:number]
    code = credit_card_amount_params[:code]
    amount = credit_card_amount_params[:amount]

    if button_action == "Purchase"

      @purchase = Purchase.find(params[:purchase_id])

      @service = Service::FinishPurchase.new(
        number: number,
        code: code,
        amount: amount,
        purchase: @purchase)

      if @service.run
        @payment = @service.payment
        render 'purchase_ok'
      else
        @message = @service.exception.message
        render 'purchase_fail'
      end

    else
      @response = FakeCreditCardApiGem.check_amount(number: number, code: code, amount: amount)
    end
  end

  private

  def credit_card_amount_params
    params.permit(:number, :code, :amount, :commit, :purchase_id)
  end
end