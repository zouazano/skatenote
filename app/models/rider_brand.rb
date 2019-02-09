class RiderBrand < ApplicationRecord
  belongs_to :brand
  belongs_to :rider
end
