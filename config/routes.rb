Rails.application.routes.draw do

  devise_for :users
  root to: "home#index"

  resources :words,
            only: [:index, :new, :create],
            :defaults => { :format => 'html' }

end
