Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/dashboard" => "users#dashboard"
  get "/dashboard_owner" => "users#dashboard_owner"
  resources :products, only: [:index, :show, :new, :create] do
    resources :bookings, only: [:show, :create]
  end
end
