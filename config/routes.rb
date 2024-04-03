Rails.application.routes.draw do

  devise_for :users
  root to: 'homes#top'
  get 'homes/about'
  resources :users, only: [:new, :show, :edit, :update, :destroy]
  resources :posts, only: [:index, :new, :show, :destroy]
  resources :trainings, only: [:show, :new, :destroy]
  resources :training_lists, only: [:index, :show, :new, :destroy]
  resources :part, only: [:index, :show, :new, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
