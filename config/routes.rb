require 'sidekiq/web'

Rails.application.routes.draw do
<<<<<<< HEAD
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
=======
  resources :tasks
  resources :statuses
  resources :roles
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :books
  resources :subjects
>>>>>>> 488511e1d80d9e3a317220f503cee08a373bd366
  authenticate :user, ->(u) { u.admin? } do
    mount Sidekiq::Web => '/sidekiq'
  end


  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
<<<<<<< HEAD
  root "home#index"
=======
  root "books#index"
>>>>>>> 488511e1d80d9e3a317220f503cee08a373bd366

end
