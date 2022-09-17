Rails.application.routes.draw do

get 'cliente' => 'cliente#index'
controller :sessions_users do
get 'login_users' => :new
post 'login_users' => :create
delete 'logout' => :destroy
end

  get 'admin' => 'admin#index'
  controller :sessions do
    get  'login' => :new
    post 'login' => :create
    get  'administrator' => :new
    post 'administrator' => :create
    delete 'logout' => :destroy
  end

  get 'cliente/index'
  get 'sessions_users/new'
  get 'sessions_users/create'
  get 'sessions_users/destroy'

  get 'sessions/create'
  get 'sessions/destroy'
  get 'administrators/destroy'

  resources :users
  get '/card/new' => 'billing#new_card', as: :add_payment_method
  get '/success' => 'billing#success', as: :success

  resources :administrators
  resources :orders
  resources :line_items
  resources :carts
  root 'store#index', as: 'store_index'
  get 'store/index'
  resources :products
  # For details on the DSL available within this file, see
  # https://guides.rubyonrails.org/routing.html
end

