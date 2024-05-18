Rails.application.routes.draw do

  devise_for :admin, skip: [:registrations, :password], controllers: {
    sessions: 'admin/sessions'
  }

  namespace :admin do
    resources :users, only: [:destroy, :show, :index]
    resources :posts, only: [:destroy, :index]
    resources :dashboards, only: [:index, :create,]
  end

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  root to: 'homes#top'

  resources :users, only: [:show, :edit, :update, :destroy]
  resources :posts, only: [:index, :new, :destroy, :create]
  resources :lists, only: [:new, :destroy, :create]
  resources :training_menus, only: [:new, :destroy, :create]
  resources :trainings, only: [:show, :new, :destroy, :index, :create, :update] do
    collection do
      get :new_menu
      post :new_menu
      get :new_detail
      post :new_detail
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
