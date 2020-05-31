class CheckCreditCardAmountController < ApplicationController
  def index
    @response = FakeCreditCardApiGem.check_amount(
      number: params[:number],
      code: params[:code],
      amount: params[:amount]
    )
  end

end