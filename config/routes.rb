# Rails.application.routes.draw do
#   get 'posts/index'
#   get 'posts/show'
#   get 'posts/new'
#   get 'posts/create'
#   get 'posts/edit'
#   get 'posts/update'
#   get 'posts/destroy'

  Rails.application.routes.draw do
    resources :posts
    resources :users

    # Other routes can go here
    delete '/posts/:id', to: 'posts#destroy', as: 'delete_post'

  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  get "posts" ,to:"posts#index"

  # Defines the root path route ("/")
  # root "posts#index"
end
