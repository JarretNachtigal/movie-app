class MoviesController < ApplicationController
  before_action :authenticate_admin, except: [:index, :show]

  def index
    response = Movie.all
    render json: response.as_json
  end
  def create
    movie = Movie.new(
      title: params["title"],
      plot: params["plot"],
      year: params["year"],
      director: params["director"],
      english: params["english"]
    )
    if movie.save
      render json: movie
    else
      render json: {errors: movie.errors.full_messages}, status: :unprocessable_entity
    end
  end
  
  def show
    movie = Movie.find(params[:id])
    render json: movie.as_json
  end

  def update
    movie = Movie.find(params[:id])
    movie.title = params["title"] || movie.title
    movie.plot = params["plot"] || movie.plot
    movie.year = params["year"] || movie.year
    movie.director = params["director"] || movie.director
    movie.english = params["english"] || movie.english
    if movie.save
      render json: movie
    else
      render json: {errors: movie.errors.full_messages}, status: :unprocessable_entity
    end

  end

  def destroy
    movie = Movie.find(params[:id])
    movie.destroy
    render json: {message: "hakai"}
  end
end
