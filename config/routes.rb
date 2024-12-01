Rails.application.routes.draw do
  get "users/new"
  resources :articles, only: [ :index, :new, :create, :show, :edit, :update, :destroy ]
  get "/", to: "articles#index"
  get "/create", to: "articles#new"
  # get "/:id/edit", to: "articles#edit"
  # get "/articles/:id", to: "articles#show"
  resources :users
end
