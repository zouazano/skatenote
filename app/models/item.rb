class Item < ApplicationRecord
  has_many :user_items
  has_many :users, through: :user_items
  has_many :tried_items
  has_many :tried_users, through: :tried_items, source: :user
end