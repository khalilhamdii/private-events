Rails.application.routes.draw do
  root to: 'users#new'
  resources :users, only: [:new, :create]
  resources :events, only: [:show, :create]
end
