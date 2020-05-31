module Service
  class OrderCreator
    def initialize(session_cart)
      @session_cart = session_cart
    end

    def call
      @order = Order.new(
        products: @session_cart.products,
        order_status: 'pending_payment',
        total_amount: @session_cart.total_amount,
        user: @session_cart.current_user
      )
      @order.save!
      @order
    end
  end
end