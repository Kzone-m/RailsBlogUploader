Rails.application.routes.draw do

  root 'sessions#index'

  get '/login',to: 'sessions#login'

  post 'login', to: 'sessions#login'

  resources :posts

  get 'users/login'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
