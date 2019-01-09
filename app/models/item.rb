class Item < ApplicationRecord
  has_many :users, through: :user_items
  has_many :user_items
  accepts_nested_attributes_for :user_items
end
