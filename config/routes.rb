Rails.application.routes.draw do
  devise_for :users

  root to: "home#index"

  #resources :clothes, only: [:index, :show]


  resources :bookings, only: [:index]


  resources :clothes do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, only: [] do
    member do
    patch :accept
    patch :decline
    end
  end


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  #resources :bookings, only:[:index, :update] #gestion booking côté marchand

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
