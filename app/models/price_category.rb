class PriceCategory < ActiveRecord::Base
  has_many :prices
end
