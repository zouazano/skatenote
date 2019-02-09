class Brand < ApplicationRecord
	has_many :items
	
  has_many :rider_brands
  has_many :riders, through: :rider_brands
end
