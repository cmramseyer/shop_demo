module Service
  class FinishPurchase
    attr_reader :exception, :purchase, :payment

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
        make_payment_in_the_credit_card
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

    def make_payment_in_the_credit_card
      @payment = FakeCreditCardApiGem.make_a_payment(number: @number, code: @code, amount: @amount)
    end

  end
end