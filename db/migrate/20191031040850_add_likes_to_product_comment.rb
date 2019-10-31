class AddLikesToProductComment < ActiveRecord::Migration[6.0]
  def change
    add_column :product_comments, :likes, :integer, default: 0
  end
end
