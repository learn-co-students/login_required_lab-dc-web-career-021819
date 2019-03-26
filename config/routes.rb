Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: "sessions#index"
  get '/login', to: "sessions#new"
  post '/login', to: "sessions#create"
  get '/', to: "secrets#show", as: "secret"

  resources :sessions, only: [:show, :create, :destroy]
  post '/logout', to: "sessions#destroy", as: "destroy"
  # root "sessions#index"
end
