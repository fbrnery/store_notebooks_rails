Rails.application.routes.draw do

  get 'admin' => 'admin#index'
  controller :sessions do
    get  'login' => :new
    post 'login' => :create
    get  'administrator' => :new
    post 'administrator' => :create
    delete 'logout' => :destroy
  end

  get 'sessions/create'
  get 'sessions/destroy'
  get 'administrators/destroy'
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

