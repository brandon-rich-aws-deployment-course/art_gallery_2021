Rails.application.routes.draw do
  resources :arts
  resources :albums
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "arts#index"
  get "/articles", to: "articles#index"
  get "/articles/:id", to: "articles#show"
end
