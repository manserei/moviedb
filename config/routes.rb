Rails.application.routes.draw do
  resources :actors
  resources :movies
  root 'movies#index'
end
