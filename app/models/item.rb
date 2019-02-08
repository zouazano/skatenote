class Item < ApplicationRecord
  has_many :user_items, dependent: :destroy
  has_many :users, through: :user_items
  has_many :want_items, dependent: :destroy
  has_many :want_users, through: :want_items, source: :user

  enum category: { completes: 0, decks: 1, trucks: 2, wheels: 3, bearings: 4, griptape: 5, hardware: 6, shoes: 7, other: 8 }
  belongs_to :brand

end