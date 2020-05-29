class ResultsSession
  def initialize(session)
    @session = session
  end

  def set_session_values(params)
    [:brand, :category_name, :type].each do |key|
      # each filter link sends a keep params
      # we will delete session variables if keep it's not present
      @session[key] = nil unless params[:keep]
      # we will store the param value if session var is not present
      @session[key] ||= params[key]
      # we will delete the session value if the remove param is present
      @session[key] = nil if params["remove_#{key}".to_sym]
    end

    self
  end

  def brand
    @session[:brand]
  end

  def category_name
    @session[:category_name]
  end

  def type
    @session[:type]
  end

  def options
    {
      brand: @session[:brand],
      category_name: @session[:category_name],
      type: @session[:type]
    }
  end

end