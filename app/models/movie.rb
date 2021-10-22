class Movie < ApplicationRecord
  validates :title, :plot, :year, :director, presence: true
  validates :plot, length: { minimum: 10 }
end
