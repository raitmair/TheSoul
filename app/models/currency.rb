class Currency < ActiveRecord::Base
  has_many :prices

  validates :name, :presence => { message: "Nazev musi byt vyplnen" }
  validates :name, :uniqueness => { message: "Nazev teto hodnoty jiz existuje" }
end
