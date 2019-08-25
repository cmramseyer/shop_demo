class Searchable

  def self.create(object)
    if object.class.name == "Product"
      SearchableProduct.new(object)
    elsif object.class.name == "Review"
      SearchableReview.new(object)
    else
      raise StandardError.new "Product or Review expected"
    end
  end

end