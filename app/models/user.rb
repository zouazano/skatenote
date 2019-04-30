class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  dragonfly_accessor :image


  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :user_items, dependent: :destroy
  has_many :items, through: :user_items
  has_many :want_items, dependent: :destroy
  has_many :wants_items, through: :want_items, source: :item

  has_many :active_relationships, class_name:  "Relationship",
                                  foreign_key: "follower_id",
                                  dependent:   :destroy
  has_many :following, through: :active_relationships, source: :followed


  has_many :passive_relationships, class_name:  "Relationship",
                                   foreign_key: "followed_id",
                                   dependent:   :destroy
  has_many :followers, through: :passive_relationships, source: :follower
  

  def remember_me
    true
  end


end
