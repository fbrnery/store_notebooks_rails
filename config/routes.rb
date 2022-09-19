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
 
  resources :administrators
  resources :orders
  resources :line_items
  resources :carts
  root 'store#index', as: 'store_index'
  get 'store/index'
  resources :products do
    get :who_bought, on: :member
  end
end

