Rails.application.routes.draw do
  resources :restaurants do
    resources :reviews, only: [ :new, :create ]
  end
  namespace :admin do
    resources :restaurants, only: [:update, :destroy]
    resources :reviews, only: [:update, :destroy]
  end
  root to: 'restaurants', to: 'restaurants#index'
end
