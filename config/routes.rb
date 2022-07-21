Rails.application.routes.draw do
  devise_for :users
  root to: "users#index"
  resources :user, only: :index do
    resources :item, only: [:index, :new]
  end
end
