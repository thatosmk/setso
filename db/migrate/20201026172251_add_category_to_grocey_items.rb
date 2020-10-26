class AddCategoryToGroceyItems < ActiveRecord::Migration[6.0]
  def change
    add_column :grocey_items, :category, :string
    add_column :grocey_items, :shop, :string
  end
end
