module Service
  class CreatePurchase
    attr_reader :exception, :purchase
    def initialize(purchase)
      @purchase = purchase
    end

    def run
      ActiveRecord::Base.transaction do
        @purchase.save!
        @purchase.update_attributes(amount: @purchase.calculate_amount)
      end
      true
    rescue Exception => e
      @exception = e
      false
    end

  end
end