Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :instruments do
    resources :bookings, only: [:create, :new]
  end
  resources :users do
  resources :bookings, only: [:index]
  end
  resources :booking, only: [:show, :destroy]
end
