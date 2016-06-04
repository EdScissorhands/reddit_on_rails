Rails.application.routes.draw do
  get 'users/new'

  resources :users, only: [:new, :create]
  resources :subs
  resource :session, only: [:new, :create, :destroy]
  resources :posts, except: :index
end
