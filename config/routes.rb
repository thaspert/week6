Rails.application.routes.draw do

  root 'movies#index'

  resources :movies
  resources :directors
  resources :actors, only: [:index, :show]

  resources :users

  get '/login' => 'sessions#new'
  get '/logout' => 'sessions#destroy'


end
