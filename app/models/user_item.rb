class UserItem < ApplicationRecord
  dragonfly_accessor :image
  
  belongs_to :user
  belongs_to :item
end
