Rails.application.routes.draw do
  resources :restaurants do
    resources :reviews, only: [ :index, :new, :create ]
  end
  namespace :admin do
    resources :restaurants, only: [:update, :delete]
    resources :reviews, only: [:update, :delete]
  end
  root to: 'restaurants'
end
