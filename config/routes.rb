Rails.application.routes.draw do
  get 'products/index'

  devise_for :users
  root to: 'pages#home'

  resources :products, only: [ :index, :show ]
end
