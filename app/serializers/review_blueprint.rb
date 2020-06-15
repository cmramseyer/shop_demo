class ReviewBlueprint < Blueprinter::Base
  identifier :id
  fields :title, :content, :user_email

end