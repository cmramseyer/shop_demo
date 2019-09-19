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
        return false unless check_amount
        @purchase.finish!
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
      @response["message"] == "valid"
    end

    def update_credit_card_amount
      #
    end

  end
end