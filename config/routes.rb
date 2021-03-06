Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :profiles do
    resources :bookings, only: %i[index new create]
  end
  resources :bookings, only: %i[destroy]
  get 'mybookings', to: 'bookings#users_bookings'


end
