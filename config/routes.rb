Rails.application.routes.draw do
  resources :actors
  resources :movies
  resources :roles
  root 'movies#index'
end
