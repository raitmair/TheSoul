class Currency < ActiveRecord::Base
  has_many :prices
end
