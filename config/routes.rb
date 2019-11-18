Rails.application.routes.draw do
 






  root 'homes#top'
  get '/map' => 'homes#map'
  resources :artists
  get '/festivals/map' => 'festivals#map'
  resources :festivals
  resources :fes_artists 
  get '/festivals' =>'festivals#search'
  resources :regions,only: [:index, :destroy]
  devise_for :users, controllers: {
    sessions:      'users/sessions',
    passwords:     'users/passwords',
    registrations: 'users/registrations'
   }

  resources :users
  get "users/:id/favorite_festtivals" => "users#favorite_festivals"
  post "/favorite_festivals/:id" => 'favorite_festivals#favorite', as: 'favorite'
  delete '/favorite_festivals/:id' => 'favorite_festivals#unfavorite', as: 'unfavorite'
  get "users/:id/favorite_artists" => "users#favorite_artists"
  post "/favorite_artists/:id" => 'favorite_artists#favorite', as: 'favorite1'
  delete '/favorite_artists/:id' => 'favorite_artists#unfavorite', as: 'unfavorite1'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
