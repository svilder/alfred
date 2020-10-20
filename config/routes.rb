Rails.application.routes.draw do
  devise_for :users
  patch 'edit_color_preference', to: 'users#edit_color_preference'
  root to: 'pages#home'

  resources :to_do_lists, except: [ :show ] do
    resources :tasks, only: [ :new, :create ]
  end

  resources :tasks, only: [ :destroy, :edit, :update ] do
    patch 'done', to: 'tasks#done'
  end

  resources :objectives
  resources :missions
  resources :long_notes
  resources :short_notes
  resources :bookmarks
end
