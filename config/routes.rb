Rails.application.routes.draw do
  root 'events#index'
  resources :users
  resources :events
  resources :event_attendences, only: [:new, :create]
  resources :sessions, only: [:index, :new, :create, :destroy]
  get 'show_events', to: 'users#show', as: 'show_events'
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  get 'home', to: 'events#index', as: 'home'

end
