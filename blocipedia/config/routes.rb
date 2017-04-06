Rails.application.routes.draw do
<<<<<<< HEAD
  devise_for :users
  root 'welcome#index'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".
=======
>>>>>>> checkpoint-3-user-sign-in-out

  root to: 'welcome#index'

  resources :wikis

  devise_for :users

end
