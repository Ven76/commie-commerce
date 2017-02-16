Rails.application.routes.draw do
  get 'signup/index'

  root 'shops#index'

  devise_for :users, :controllers=> {
     :omniauth_callbacks => "users/omniauth_callbacks"
   }




  post '/shop/:shop_id/cart', to: 'carts#create', as: 'new_shop_cart'
  resources :shops do
    resources :carts
  end

  resources :carts


end
