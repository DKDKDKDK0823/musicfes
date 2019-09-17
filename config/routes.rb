Rails.application.routes.draw do
 



  root 'homes#top'
  resources :favorite_festivals
  resources :favorite_artists
  resources :artists
  resources :festivals
  resources :regions,only: [:index, :destroy]
  devise_for :users, controllers: {
    sessions:      'users/sessions',
    passwords:     'users/passwords',
    registrations: 'users/registrations'
   }

  resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
