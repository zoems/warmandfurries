Rails.application.routes.draw do
  devise_for :users
  # root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  get "map", to: "pages#map"

  # Defines the root path route ("/")
  root "furries#index"
  resources :bookings, only: [:index, :destroy]

  resources :furries, only: [:index, :show, :new, :create, :destroy] do
    resources :bookings, only: [:new, :create]
  end

end
