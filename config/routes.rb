Rails.application.routes.draw do
  resources :articles, only: [:index, :new, :create, :show, :edit, :update]
  get "/", to: "articles#index"
  get "/create", to: "articles#new"
  # get "/:id/edit", to: "articles#edit"
  # get "/articles/:id", to: "articles#show"
end
