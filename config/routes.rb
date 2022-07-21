Rails.application.routes.draw do
  devise_for :users
  root to: "items#index"
  resources :user, only: :index
  resources :item, only: :index
end
