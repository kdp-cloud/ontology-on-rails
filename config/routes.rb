Rails.application.routes.draw do
  get 'errors/not_found'
  get 'errors/internal_server_error'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root "ontologies#index"

  get "/ontologies", to: "ontologies#index"

  get "/ontologies/:id", to: "ontologies#show"
end
