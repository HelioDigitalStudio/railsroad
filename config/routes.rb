Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get "/stylesheet", to: "pages#stylesheet"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
