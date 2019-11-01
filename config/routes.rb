Rails.application.routes.draw do
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  resources :gossip, except: [:destroy] 
  resources :users, except: [:destroy]
  resources :team, only: [:index]
  resources :contact, only: [:index]
  resources :city
  root 'gossip#index'
  get '/welcome/:first_name', to: 'dynamic#welcome' #mettre dans controller user

  resources :sessions, only:[:new, :create, :destroy]
  end