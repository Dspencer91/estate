Rails.application.routes.draw do
  get "/dsahboard" => 'dashboard#index', as: :dashboard
  get 'dashboard/properties'
  get 'dashboard/reports'
  
  resources :properties
  devise_for :accounts
  root to: 'home#main'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
