class Searchable

  def self.create(object)
    if object.class.name == "Product"
      SearchableProduct.new(object)
    elsif object.class.name == "Review"
      SearchableReview.new(object)
    elsif object.class.name == "Comment"
      SearchableComment.new(object)
    else
      raise StandardError.new "Product, Review or Comment expected"
    end
  end

end