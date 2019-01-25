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

  has_many :follow_relationships
  has_many :followings, through: :follow_relationships, source: :follow
  has_many :reverse_of_follow_relationships, class_name: 'FollowRelationship', foreign_key: 'follow_id'
  has_many :followers, through: :reverse_of_follow_relationships, source: :user


end
