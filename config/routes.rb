Rails.application.routes.draw do
  get 'sessions/new'

  root 'pages#index'
  get 'pages/help'

   get  '/login',    to: 'sessions#new'
   post '/login',    to: 'sessions#create'
   delete '/logout', to: 'sessions#destroy'

  resources :users
  resources :topics do
  resources :comment
  end

  get 'favorites/index'
  post '/favorites', to: 'favorites#create'
  post "topics/comment" => "topics#comment"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
