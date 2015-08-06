Rails.application.routes.draw do

  root 'home#index'
  # root 'artists#show'

  get 'auth/twitter',          as: :login
  get 'auth/twitter/callback', to: 'sessions#create'
  get '/logout',               to: 'sessions#destroy'

  resources :genres, only: [:index, :show] do

  end

end



