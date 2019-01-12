class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :user_items
  has_many :items, through: :user_items
  has_many :want_items
  has_many :wants_items, through: :want_items, source: :item
end
