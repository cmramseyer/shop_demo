module Service
  class PaymentCreator
    attr_reader :exception, :payment
    def initialize(order, number, code)
      @order = order
      @number = number
      @code = code
    end

    def call
      ActiveRecord::Base.transaction do
        make_payment
        payment = Payment.create!(order: @order, credit_card_number: @number)
        @order.update_attributes(order_status: "finished", payment: payment)
      end
      true
    rescue Exception => e
      @exception = e
      false
    end

    private

    def make_payment
      FakeCreditCardApiGem.make_a_payment(number: @number, code: @code, amount: @amount)
    end

  end
end