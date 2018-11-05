Rails.application.routes.draw do
  resources :movies
  root :to => redirect('/movies')
  post '/movies/search_tmdb'
  get '/auth/:provider/callback' => 'sessions#create'
  get '/signout' => 'sessions#destroy', :as => :signout
  
  
end
