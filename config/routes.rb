require 'sidekiq/web'

Rails.application.routes.draw do

  resources :courses
  resources :library, only[:index]
  devise_for :users
  root to: 'courses#index'

end