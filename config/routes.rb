Rails.application.routes.draw do
  root 'games#index'
  resources :critics
  resources :games
  resources :companies
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
