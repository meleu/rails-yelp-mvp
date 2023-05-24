class Review < ApplicationRecord
  RATINGS_RANGE = 0..5

  belongs_to :restaurant

  validates :content, :rating, presence: true
  validates :rating, numericality: { only_integer: true, in: RATINGS_RANGE }
end
