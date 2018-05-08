Rottenpotatoes::Application.routes.draw do
  resources :movies
  # map '/' to be a redirect to '/movies'
  root :to => redirect('/movies')
  match '/movies/:id/director', to: 'movies#same_director', :as => :search_director_movies, via: [:get,:post]
end
