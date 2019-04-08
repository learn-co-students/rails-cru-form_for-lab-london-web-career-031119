Rails.application.routes.draw do

  resources :songs
  resources :artists
  resources :genres

  get '/index', to: 'static#index'
end
