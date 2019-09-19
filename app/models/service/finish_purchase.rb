module Service
  class FinishPurchase
    attr_reader :exception, :purchase

    def initialize(number:, code:, amount:, purchase:)
      @number = number
      @code = code
      @amount = amount
      @purchase = purchase
    end

    def run
      ActiveRecord::Base.transaction do
        check_amount
        # change purchase status from pending to done
        @purchase.done!
        # updates the purchase with the card number and when was paid
        @purchase.update_attributes(
          credit_card_number: @number,
          paid_at: Time.now
          )
        # update the credit card amount in the api
        update_credit_card_amount
      end
      true
    rescue Exception => e
      @exception = e
      false
    end

    private

    def check_amount
      @response = FakeCreditCardApiGem.check_amount(number: @number, code: @code, amount: @amount)
      message = @response["message"]
      raise StandardError.new message unless message == "valid"
    end

    def update_credit_card_amount
      #
    end

  end
end