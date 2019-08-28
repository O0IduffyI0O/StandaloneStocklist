Rails.application.routes.draw do
  get 'stocklist/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'stocklist#index'

  resources :units
end
