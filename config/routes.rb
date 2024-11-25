Rails.application.routes.draw do
  get "/", to: "articles#home"
  get "/create", to: "articles#create"
  get "/:id/edit", to: "articles#edit"
  get "/articles/:id", to: "articles#show"
end
