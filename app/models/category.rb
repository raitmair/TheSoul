class Category < ActiveRecord::Base
  has_many :articles

  validates :name, :presence => { message: "Nazev musi byt vyplnen!" }
  validates :name, :uniqueness => { message: "Tato kategorie jiz existuje" }
end
