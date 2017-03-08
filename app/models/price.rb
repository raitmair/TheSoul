class Price < ActiveRecord::Base
  belongs_to :currency
  belongs_to :price_category

  validates :name, :presence => { message: "Nazev musi byt vyplnen" }
  validates :price, :presence => { message: "Cena musi byt vyplnena" }
end
