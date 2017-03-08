class PriceCategory < ActiveRecord::Base
  has_many :prices

  validates :name, :presence => { message: "Nazev musi byt zadan" }
  validates :name, :uniqueness => { message: "Tato kategorie jiz existuje" }
end
