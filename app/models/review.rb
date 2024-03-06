class Review < ApplicationRecord
  belongs_to :restaurant

  validates :rating, presence: true, numericality: { only_integer: true }
  validates :rating, numericality: { in: (0..5) }
  validates :content, presence: true
end
