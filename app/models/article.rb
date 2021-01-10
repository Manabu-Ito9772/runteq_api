class Article < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_one_attached :eye_catch
  enum status: { draft: 0, in_review: 10, published: 20, archived: 30 }

  validates :title, presence: true
end
