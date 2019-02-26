Rails.application.routes.draw do
  devise_for :users
  root to: 'instruments#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :instruments do
    resources :bookings, only: [:create, :new]
  end

  # resources :booking, only: [:destroy]
end
