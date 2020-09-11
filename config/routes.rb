Rails.application.routes.draw do

  devise_for :users
  root to: "home#index"

  localized do
    resources :words
    resources :comments
    resources :categories, only: [:show]
  end

end
