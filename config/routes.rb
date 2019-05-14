# frozen_string_literal: true
Rails.application.routes.draw do

  # Authentication
  # @implemented
  devise_for :users
  
  # Administration
  # @implemented
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin' 

  # Application
  # @implemented
  root to: 'home#index'
  get '/faq',          to: 'home#faq'
  get '/about',        to: 'home#about'
  get '/contributing', to: 'home#contributing'
  get '/courses',      to: 'home#courses'
  get '/terms-of-use', to: 'home#terms-of-use'
  resources :subscriptions, only: [:create]

  # Blog
  # @implemented
  namespace :blog, constraint: {subdomain: 'blog'} do
    resources :posts, only: [:index, :show]
  end
end
