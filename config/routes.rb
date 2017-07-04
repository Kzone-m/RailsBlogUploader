Rails.application.routes.draw do

  root 'sessions#index'

  get '/login',to: 'sessions#login'

  post '/login', to: 'sessions#login'

  delete '/logout', to: 'sessions#logout'

  resources :posts

  resources :users, only: [:show]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
