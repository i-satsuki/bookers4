Rails.application.routes.draw do
  get 'home/about'

  root 'home#top'

  devise_for :users

  resources :users,only: [:show,:index,:edit,:update] do
    member do
     get :following, :followers
    end
  end

  resources :books

  resources :relationships, only: [:create, :destroy]

end