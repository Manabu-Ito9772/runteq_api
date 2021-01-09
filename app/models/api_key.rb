class ApiKey < ApplicationRecord
  before_validation :generate_access_token_and_expiration
  belongs_to :user

  validates :access_token, presence: true, uniqueness: true

  def expired?
    DateTime.now > expires_at
  end

  def generate_access_token_and_expiration
    self.access_token = SecureRandom.hex
    self.expires_at = DateTime.now + 7
  end
end
