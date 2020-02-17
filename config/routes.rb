Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'dashboard', to: 'pages#dashboard'

  resources :to_do_lists do
    resources :tasks, only: [ :new, :create ]
  end

  resources :tasks, only: [ :destroy, :edit, :update  ] do
    patch 'done', to: 'tasks#done'
  end

  resources :objectives
  resources :missions
  resources :long_notes
  resources :short_notes
end
