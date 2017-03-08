class CreateCurrencies < ActiveRecord::Migration
  def change
    create_table :currencies do |t|
      t.string :name
      t.string :create
      t.string :update
      t.string :destroy

      t.timestamps null: false
    end
  end
end
