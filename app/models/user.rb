class User < ApplicationRecord
  has_many :active_relationships, class_name: Relationship.name, 
    foreign_key: "follower_id", dependent: :destroy
  has_many :passive_relationships, class_name: Relationship.name, 
    foreign_key: "followed_id", dependent: :destroy
  has_many :following, through: :active_relationships,  source: :followed
  has_many :followers, through: :passive_relationships, source: :follower
  has_many :reading_books
  has_many :reviews, dependent: :destroy
  has_many :rakes
  has_many :likes
  has_many :requests
end
