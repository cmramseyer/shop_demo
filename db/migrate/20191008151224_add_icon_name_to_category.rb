class AddIconNameToCategory < ActiveRecord::Migration[6.0]
  def change
    add_column :categories, :icon_name, :string
  end
end
