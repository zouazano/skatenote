class User < ApplicationRecord
  has_many :items, through: :user_items
  has_many :user_items
end
