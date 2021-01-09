class User < ApplicationRecord
  authenticates_with_sorcery!
  has_many :articles, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :social_profiles, dependent: :destroy
  has_many :api_keys, dependent: :destroy

  validates :email, presence: true, uniqueness: true
  validates :password, presence: true

  def activate_api_key!
    return api_keys.active.first if api_keys.active.exists?

    api_keys.create
  end
end
