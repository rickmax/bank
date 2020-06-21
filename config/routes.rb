Rails.application.routes.draw do
  resources :deposits
  resources :accounts
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "wellcome#index"
  get 'wellcome/index'
end
