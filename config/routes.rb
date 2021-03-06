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

  resources :long_notes do
    patch 'set_public', to: 'long_notes#set_public'
  end

  resources :objectives
  # resources :missions
  resources :short_notes
  resources :bookmarks
  resources :posts
end
