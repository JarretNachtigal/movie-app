class MovieGenresController < ApplicationController
  def create
    mgenre = MovieGenre.new(
      movie_id: params[:movie_id],
      genre_id: params[:genre_id]
    )
    if mgenre.save
      render json: mgenre.as_json
    else
      render json: { mgenre.errors.full_messages  }, status: :unprocessable_entity
    end
  end
end
