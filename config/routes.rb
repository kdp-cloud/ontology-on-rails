Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root "ontologies#index"

  get "/ontologies", to: "ontologies#index"

  get "/ontologies/:id", to: "ontologies#show"
end
