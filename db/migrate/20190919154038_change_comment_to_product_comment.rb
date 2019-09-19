class ChangeCommentToProductComment < ActiveRecord::Migration[6.0]
  def change
    rename_table :comments, :product_comments
  end
end
