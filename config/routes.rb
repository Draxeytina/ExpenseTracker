Rails.application.routes.draw do
  devise_for :users

  root 'users#index'

  resources :users
  resources :groups do
    resources :settlements
  end
  
end
