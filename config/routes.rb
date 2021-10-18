Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get "/display/:id", controller: "actors", action: "display"
  # get "/display_movies", controller: "movies", action: "display_all"
  # get "/display_movie/:id", controller: "movies", action: "display_by_id"
  # get "/display_shrek", controller: "movies", action: "display_shrek"
  # # hw
  # get "/display_query", controller: "actors", action: "display_query" # works with id = 5
  # get "/url_segment/:id", controller: "actors", action: "url_segment"
  # post "display_actor", controller: "actors", action: "display"
  get "/movies" => "movies#index"
  post "/movies" => "movies#create"
  get "/movies/:id" => "movies#show"
  patch "movies/:id" => "movies#update"
  delete "movies/:id" => "movies#destroy"

  get "/actors" => "actors#index"
  post "/actors" => "actors#create"
  get "/actors/:id" => "actors#show"
  patch "actors/:id" => "actors#update"
  delete "actors/:id" => "actors#destroy" 
end
