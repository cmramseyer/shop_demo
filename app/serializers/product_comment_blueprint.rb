class ProductCommentBlueprint < Blueprinter::Base
  identifier :id
  fields :text, :user_email

end