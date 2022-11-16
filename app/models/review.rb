class Review < ApplicationRecord
  belongs_to :restaurant, dependent: :destroy  # @review.restaurant
  validates :content, presence: true
end
