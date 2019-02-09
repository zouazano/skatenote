class Rider < ApplicationRecord
	has_many :items

  has_many :rider_brands
  has_many :brands, through: :rider_brands
end
