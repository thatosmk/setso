class CreateGroceyItems < ActiveRecord::Migration[6.0]
  def change
    create_table :grocey_items do |t|
      t.string :item
      t.integer :qty
      t.references :grocery_list, null: false, foreign_key: true

      t.timestamps
    end
  end
end
