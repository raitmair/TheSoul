class Price < ActiveRecord::Base
  belongs_to :currency
  belongs_to :price_category
end
