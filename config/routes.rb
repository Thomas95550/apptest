Rails.application.routes.draw do

  resources :categories
  resources :users
  resources :gists

  root to: 'home#index'
  get '/auth/:provider/callback' => 'sessions#create'
  get '/signin' => 'sessions#create', :as => :signin
  
  match '/signout', to: 'sessions#destroy', via: 'get'
  match '/signout', to: 'sessions#destroy', via: 'delete'
  
  get '/auth/failure' => 'sessions#failure'

  match '/index',      to: 'home#search',       via: 'get'
  match '/index',      to: 'home#search',       via: 'post'
  
  match '/gists',      to: 'gists#list_cate',   via: 'get'
  match '/gists',      to: 'gists#list_cate',   via: 'post'
  
  match '/gists',      to: 'gists#cate',        via: 'get'
  match '/gists',      to: 'gists#cate',        via: 'post'

  match '/gists',      to: 'categories#add',        via: 'get'
  match '/gists',      to: 'categories#add',        via: 'post'


get '/categories/:id', to: 'gists#show', as: 'seller_item'



end