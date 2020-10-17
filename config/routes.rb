Rails.application.routes.draw do
  devise_for :users
  resources :grocery_lists do
    resources :grocey_items, shallow: true
  end
  resources :recipes

  root to: "site#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
