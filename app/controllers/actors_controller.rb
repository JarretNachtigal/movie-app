class ActorsController < ApplicationController
  def display
    actor = Actor.find(params["id"])
    render json: actor.as_json
  end
  def display_query
    actor = Actor.find(params[:id])
    render json: actor.as_json
  end
  def url_segment
    actor = Actor.find(params[:id])
    render json: actor.as_json
  end
end
