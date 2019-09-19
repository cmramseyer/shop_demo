class PurchasesController < ApplicationController
  def create
    @product = Product.find(params[:product_id])
    @purchase = Purchase.new(
      product_id: params[:product_id],
      user_id: current_user.id,
      quantity: purchase_params[:quantity]
      )

    @service = Service::CreatePurchase.new(@purchase)
    if @service.run
      redirect_to product_purchase_path(@product, @service.purchase), notice: "Good!"
    else
      redirect_to product_path(@product), alert: @service.exception.message
    end
  end

  def show
    @purchase = Purchase.find(params[:id])
    @credit_cards = FakeCreditCardApiGem.index
  end

  private
  def purchase_params
    params.require(:purchase).permit(:quantity)
  end

end
