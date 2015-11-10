Rails.application.routes.draw do
  resources :cantante_cancions
  devise_for :usuarios
  resources :cancions
  resources :cantantes
  root :to => 'inicio#index'
  get 'inicio/index'




end
