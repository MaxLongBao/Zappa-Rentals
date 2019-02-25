Rails.application.routes.draw do
  get 'bookings/new'
  get 'bookings/create'
  get 'instruments/index'
  devise_for :users
  root to: 'instruments#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :instruments do
    resources :booking, only: [:create, :new]
  end

  resources :booking, only: [:destroy]
end
