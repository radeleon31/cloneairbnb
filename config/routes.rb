Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :helicopter do
    resources :booking, only: [:new, :create]
  end
    resources :booking, only: [:show, :destroy, :index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
