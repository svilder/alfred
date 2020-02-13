Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'dashboard', to: 'pages#dashboard'

  resources :to_do_lists do
    resources :tasks, only: [ :new, :create, :edit, :update ]
  end

  resources :tasks, only: [ :destroy ]
  resources :objectives
  #  resources :missions, except: :index
  #  get "/missions", to: 'missions#index', as: board_of_missions
  resources :long_notes
  resources :short_notes
end
