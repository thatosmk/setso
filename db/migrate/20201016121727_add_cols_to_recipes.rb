class AddColsToRecipes < ActiveRecord::Migration[6.0]
  def change
    add_column :recipes, :meal_type, :string
    add_column :recipes, :meal_time, :string
  end
end
