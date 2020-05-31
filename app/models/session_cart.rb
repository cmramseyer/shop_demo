class SessionCart
  attr_reader :current_user
  def initialize(session, current_user)
    @session = session
    @current_user = current_user
    @session[:product_ids] ||= []
  end

  def add(product)
    @session[:product_ids] << product.id
  end

  def has_product?(product)
    @session[:product_ids].include? product.id
  end

  def products
    Product.where(id: @session[:product_ids])
  end

  def products_size
    products.size
  end

  def total_amount
    products.sum(&:price)
  end

  def clean!
    @session[:product_ids] = []
  end

  def empty?
    products_size == 0
  end
end