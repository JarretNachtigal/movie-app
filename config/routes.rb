Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/display/:id", controller: "actors", action: "display"
  get "/display_movies", controller: "movies", action: "display_all"
  get "/display_movie/:id", controller: "movies", action: "display_by_id"
  get "/display_shrek", controller: "movies", action: "display_shrek"

end
