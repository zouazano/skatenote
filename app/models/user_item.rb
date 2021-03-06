class UserItem < ApplicationRecord
  dragonfly_accessor :image
  
  belongs_to :user
  belongs_to :item

  enum evaluation: { good: 0}
end
