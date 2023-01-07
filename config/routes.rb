Rails.application.routes.draw do
  get 'friendships/new'
  get 'friendships/create'
  devise_for :users

  root "posts#index"

  resources :users do
    resources :posts
  end
  resources :friendships
end
