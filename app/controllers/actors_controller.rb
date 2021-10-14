class ActorsController < ApplicationController
  def display
    
    actor = Actor.find(params[:id])
    render json: actor.as_json
  end
end
