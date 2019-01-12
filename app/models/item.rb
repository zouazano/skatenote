class Item < ApplicationRecord
  has_many :user_items
  has_many :users, through: :user_items
  has_many :want_items
  has_many :want_users, through: :want_items, source: :user
end