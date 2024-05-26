require 'sidekiq/web'

Rails.application.routes.draw do
  resources :customers
  resources :books
  resources :publishers
  resources :authors
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :subjects
  authenticate :user, ->(u) { u.admin? } do
    mount Sidekiq::Web => '/sidekiq'
  end


  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"

end
