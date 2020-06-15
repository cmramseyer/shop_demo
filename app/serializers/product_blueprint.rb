class ProductBlueprint < Blueprinter::Base
  identifier :id
  fields :name, :description, :category_name, :price, :brand, :average_rating

  view :full do
    fields :name, :description, :category_name, :price, :brand, :average_rating
    association :reviews, blueprint: ReviewBlueprint
    association :product_comments, blueprint: ProductCommentBlueprint
  end
end