Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # get to: 'pages#dashboard'

  # resources :to_do_lists do
  #   resources :tasks
  # end
  #  resources :objectives
  #  resources :missions, except: :index
  #  get "/missions", to: 'missions#index', as: board_of_missions
  #  resources :long_notes do
  #   resources :keywords
  # end
  #  resources :short_notes
end
