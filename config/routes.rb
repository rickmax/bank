Rails.application.routes.draw do

  mount Sidekiq::Web => '/sidekiq'
  resources :banks
  get 'balance/index'
  post 'balance/index'
  resources :transfers
  resources :withdraws
  resources :deposits, only: [:index, :show, :new]
  resources :accounts
  devise_for :users
  root to: "wellcome#index"
  get 'wellcome/index'
  get 'state/get_cities/:id', to: "state#get_cities"


end
