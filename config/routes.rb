Rails.application.routes.draw do

  # root 'home#index'
  root 'artists#show'

  get 'auth/twitter',          as: :login
  get 'auth/twitter/callback', to: 'sessions#create'
  get '/logout',               to: 'sessions#destroy'

  resources :artists, only: [:index, :show] do
    resources :albums, only: [:index, :show]
    resources :songs,  only: [:index, :show]
  end


end
