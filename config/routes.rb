Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :products
      resources :shopping_carts, only: [:show, :destroy]
      resources :product_shopping_carts, only: :create
    end
  end
end
