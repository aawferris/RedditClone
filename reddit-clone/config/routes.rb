Rails.application.routes.draw do
  devise_for :accounts

# Nest the posts here so that they're embedded within the community
  resources :communities do
    resources :posts
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to: "public#index"
  # Defines the root path route ("/")
  # root "articles#index"
end
