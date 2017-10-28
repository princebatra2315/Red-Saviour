Rails.application.routes.draw do


  get 'sessions/new'

  get 'users/new'

  root 'static_pages#home'
  get  '/help',    to: 'static_pages#help'
  get  '/about',   to: 'static_pages#about'
  get  '/match',   to: 'static_pages#match'
  get  '/contact', to: 'static_pages#contact'
  get  '/signup',  to: 'users#new'
  get  '/root',    to: 'static_pages#home'
  get  '/login',    to: 'sessions#new'
  post '/login',   to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'    
  post '/signup',  to: 'users#create'
  post '/ticket' , to: 'tickets#create'
  get  '/ticket' ,  to: 'tickets#new'
  get   '/update' ,   to:  'tickets#index'
  #get   '/users',   to: 'users#index'
  resources :users do
    member do
      get :following, :followers
    end
  end


 resources :account_activations, only: [:edit]
  resources :microposts,         only: [:create, :destroy]
   resources :relationships,       only: [:create, :destroy]

end
