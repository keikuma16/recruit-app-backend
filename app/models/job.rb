class Job < ApplicationRecord
  validates :title, presence: true
  validates :category, presence: true
  validates :salary, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
end
