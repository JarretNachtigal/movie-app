class Movie < ApplicationRecord
  has_many :actors
  validates :title, :plot, :year, :director, presence: true
  validates :plot, length: { minimum: 10 }
end
