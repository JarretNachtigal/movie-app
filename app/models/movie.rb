class Movie < ApplicationRecord
  has_many :actors
  has_many :movie_genres
  has_many :genres, through: :movie_genres
  validates :title, :plot, :year, presence: true
  validates :plot, length: { minimum: 10 }
end
