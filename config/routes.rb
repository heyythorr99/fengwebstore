Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "products#index"
  get "/products/:id/buy", to: "products#buy", as: "buy"
  get "/checkout", to: "products#checkout", as: "checkout"
  get "products.json", to: "products#list"
  get "/products", to: "products#index"
end
