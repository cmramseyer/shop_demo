class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.string :title
      t.text :content
      t.integer :product_id
      t.integer :user_id

      t.timestamps
    end
  end
end
