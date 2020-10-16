class Recipe < ApplicationRecord
  has_rich_text :ingredients
  has_rich_text :method


  def self.search(name, source)
    self.where("name LIKE ?", "%#{name}%").where("meal_type LIKE ?", "%#{source}%")
  end
end
