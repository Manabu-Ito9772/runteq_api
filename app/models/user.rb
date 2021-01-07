class User < ApplicationRecord
  has_many :articles
  has_many :comments
  has_many :social_profiles

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
end
