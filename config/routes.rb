Rails.application.routes.draw do

  get 'training_menus/new'
  get 'training_menus/create'
  get 'training_menus/destroy'
  get 'training_menus/show'
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  root to: 'homes#top'
  get 'homes/about'
  resources :users, only: [:show, :edit, :update, :destroy]
  resources :posts, only: [:index, :new, :show, :destroy, :create]
  resources :trainings, only: [:show, :new, :destroy, :index, :create]
  resources :lists, only: [:index, :show, :new, :destroy, :create]
  resources :part, only: [:index, :show, :new, :destroy]
  resources :training_menus, only: [:new, :destroy, :create, :show]
  post "/trainings/new_2", to: "trainings#new_2"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
