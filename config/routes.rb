Rails.application.routes.draw do
  get "/users" => "users#index"
  post "/users" => "users#create"
  get "/users/:id" => "users#show"
  patch "/users/:id" => "users#update"
  delete "/users/:id" => "users#delete"

  get "/plans" => "plans#index"
  post "/plans" => "plans#create"
  get "/plans/:id" => "plans#show"
  patch "/plans/:id" => "plans#update"
  delete "/plans/:id" => "plans#delete"

  post "/sessions" => "sessions#create"
end
