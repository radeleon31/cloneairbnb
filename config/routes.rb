Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :helicopters do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, only: [:destroy, :index] do
   resources :booking_reviews, only: [:show, :new, :create, :destroy]
 end
end
