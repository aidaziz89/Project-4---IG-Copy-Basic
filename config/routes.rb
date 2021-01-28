Rails.application.routes.draw do

  resources :posts
  resources :users 
  
  # only: [:new, :create, :edit, :index, :patch]
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'welcome', to: 'sessions#welcome' #signup
  get 'authorized', to: 'sessions#page_requires_login'
  delete '/logout', to: 'sessions#destroy'

  get '/', to: 'homepage#index'
  get '/posts/:id/comment', to: 'posts#comment'

  get '/comments/:id', to: 'comments#new'
  post '/comments/:id', to: 'comments#create'
  

  # get 'sessions/new'
  # get 'sessions/create'
  # get 'sessions/login'
  # get 'sessions/welcome'
  # get 'users/new'
  # get 'users/create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
