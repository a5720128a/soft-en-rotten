Rails.application.routes.draw do
  
  resources :movies
  root :to => redirect('/movies')
  post '/movies/search_tmdb'
  get '/auth/:provider/callback' => 'sessions#create'
  get '/signout' => 'sessions#destroy'
  post '/movies/addMovieTMDB' => 'movies#addMovieTMDB' , :as => :addMovie
  
end
