Rails.application.routes.draw do
  resources :comments
  resources :resourzes
  resources :users, only: [:show, :edit, :update, :create]

  get '/signup', to: "users#new"
  get '/login', to: "sessions#new"
  post '/login', to: "sessions#create"

  get '/logout', to: "sessions#destroy"
<<<<<<< HEAD

=======
>>>>>>> master
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end



