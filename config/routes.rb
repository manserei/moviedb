Rails.application.routes.draw do
  resources :actors
  resources :movies
  resources :roles,
    only: [:new, :create, :edit, :update, :destroy]

  root 'movies#index'
end
