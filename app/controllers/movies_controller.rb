class MoviesController < ApplicationController
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
    movie.save
    render json: movie.as_json
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
    movie.save
    render json: movie.as_json

  end

  def destroy
    movie = Movie.find(params[:id])
    movie.destroy
    render json: {message: "hakai"}
  end
end
