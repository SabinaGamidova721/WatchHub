Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  #devise_for :users
  #root to: "index#home"

  root to: "index#startpage"
  get '/home', to: 'index#home', as: :home
  devise_for :users, controllers: { sessions: 'users/sessions' }
  devise_scope :user do
    get '/users/sign_in', to: 'users/sessions#new'
    post '/users/sign_out', to: 'users/sessions#destroy' 
  end

  # resources :films do
  #   resources :ratings, only: [:create]
  # end

  post '/ratings/new', to: 'ratings#create' 
  get '/like', to: 'user_likes#create', as: :like
  get '/unlike', to: 'user_likes#destroy', as: :unlike
  get '/later', to: 'user_watch_laters#create', as: :later
  get '/not_later', to: 'user_watch_laters#destroy', as: :not_later

  resources :ratings
  resources :comments
  resources :user_likes
  resources :user_watch_laters
  resources :user_histories
  resources :user_profiles
  resources :users
  resources :genre_films
  resources :country_films
  resources :cast_films
  resources :films
  resources :maturity_ratings
  resources :genres
  resources :countries
  resources :casts
  resources :roles
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
