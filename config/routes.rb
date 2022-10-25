Rails.application.routes.draw do
  root 'sessions#new'
  resources :sessions, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :show, :edit, :destroy, :update]
  resources :tasks, only: [:index, :new, :edit, :create, :show, :update, :destroy]
end
