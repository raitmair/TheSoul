class AddPriceCategoryToPrice < ActiveRecord::Migration
  def change
    add_reference :prices, :price_category, index: true, foreign_keys: true
    add_foreign_key :prices, :price_categories
  end
end
