Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/register', to: 'users#new'
  get '/signin', to: 'sessions#new'
  post '/signin', to: 'sessions#create'
  delete '/signout', to: 'sessions#destroy'

  resources :channels, only: [:show, :new, :create, :destroy]
  resources :videos, only: :show
  resources :users, except: :index
  resources :sessions
  root 'static#index'
end
