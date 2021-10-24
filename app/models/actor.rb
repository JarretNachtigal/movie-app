class Actor < ApplicationRecord
  belongs_to :movie
  validates :first_name, :last_name,  length: { minimum: 2 }
  validates :known_for, presence: true
  validates :age, numericality: { greater_than: 13 }

  def plot
    movie = Movie.find(movie_id).plot
    
  end

  def movie
    movie = Movie.find(movie_id).title
  end
end
