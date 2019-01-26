Rails.application.routes.draw do
  root 'home#index'

  resources :users
  resources :sessions, only: [:new, :create, :destroy]

  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  resources :airports
  get 'airports/index'

  resources :airlines
  get 'airlines/index'

  resources :flights
  get 'flights/index'

  resources :passengers
  get 'passengers/index'
end
