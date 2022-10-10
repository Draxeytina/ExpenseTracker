Rails.application.routes.draw do

  root 'users#index'

  resources :users
  resources :groups do
    resources :settlements
  end
  
end
