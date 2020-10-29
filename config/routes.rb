Rails.application.routes.draw do
  root to: 'events#new'
  resources :users, only: [:new, :create]
  resources :events, only: [:show, :create]
end
