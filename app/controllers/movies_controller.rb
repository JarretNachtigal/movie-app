class MoviesController < ApplicationController
  def display_all
    response = Movie.all
    render json: response.as_json
  end
  def display_by_id
    movie = Movie.find(params[:id])
    render json: movie.as_json
  end
  def display_shrek
    movie = Movie.where("title = 'Shrek'").readonly
    render json: movie.as_json
  end
end
