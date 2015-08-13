Rails.application.routes.draw do

  root 'home#index'
  get '/about',                to: 'home#about'

  get '/auth/twitter',          as: :login
  get '/auth/twitter/callback', to: 'sessions#create'
  get '/auth/failure', to: 'sessions#failure'
  get '/logout',               to: 'sessions#destroy'

  get '/account', to: 'users#show', as: :account

  resources :likes, only: [:create, :destroy]

  resources :artists, only: [:index, :show] do
    resources :similar_artists, only: [:index]
  end

  resources :genres, only: [:index, :show] do
    resources :artists, only: [:index, :show] do
      resources :albums, only: [:index, :show]
      resources :songs,  only: [:index, :show]
    end
  end

end
