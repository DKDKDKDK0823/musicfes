Rails.application.routes.draw do
 



  root 'homes#top'
  resources :favorite_artists
  resources :artists
  get '/festivals/map' => 'festivals#map'
  resources :festivals
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

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
