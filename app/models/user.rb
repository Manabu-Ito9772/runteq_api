class User < ApplicationRecord
  authenticates_with_sorcery!
  has_many :articles, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :social_profiles, dependent: :destroy
  has_many :api_keys, dependent: :destroy

  validates :email, presence: true, uniqueness: true
  validates :password, presence: true
end
