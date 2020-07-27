Rails.application.routes.draw do

  mount Sidekiq::Web => '/sidekiq'
  resources :banks
  get 'balance/index'
  post 'balance/index'
  resources :transfers, only: [:index, :show, :new, :create]
  resources :withdraws, only: [:index, :show, :new, :create]
  resources :deposits, only: [:index, :show, :new, :create]
  resources :accounts
  devise_for :users
  root to: "wellcome#index"
  get 'wellcome/index'
  get 'state/get_cities/:id', to: "state#get_cities"


end
