class OrderInfo
  def initialize(session_cart)
    @session_cart = session_cart
  end

  def products
    @session_cart.products
  end

  def total_amount
    @session_cart.total_amount
  end

  def products_count
    products.size
  end

  def user
    @session_cart.current_user
  end
end