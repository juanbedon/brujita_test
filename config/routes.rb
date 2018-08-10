require 'sidekiq/web'

Rails.application.routes.draw do

  resources :courses do
  	member do
  		put "add", to: "courses#library"
  		put "remove", to: "courses#library"
  	end
  end

  resources :library, only:[:index]
  resources :pricing, only:[:index]
  devise_for :users, controllers: { registrations: "registrations" }
  root to: 'home#index'
  resources :subscriptions
  resources :home, only:[:index]

end