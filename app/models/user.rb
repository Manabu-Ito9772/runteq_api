class User < ApplicationRecord
  authenticates_with_sorcery!
  has_many :articles, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :social_profiles, dependent: :destroy

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
end
