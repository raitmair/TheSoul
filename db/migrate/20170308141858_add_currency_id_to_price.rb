class AddCurrencyIdToPrice < ActiveRecord::Migration
  def change
    add_reference :prices, :currency, index: true, foreign_keys: true
    add_foreign_key :prices, :currencies
  end
end
