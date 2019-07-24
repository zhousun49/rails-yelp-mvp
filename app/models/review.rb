class Review < ApplicationRecord
  validates :content, presence: true
  validates :rating, presence: true, numericality: true, inclusion: { in: [0, 1, 2, 3, 4, 5]}
  belongs_to :restaurant
end
