Rails.application.routes.draw do
  resources :orders
  resources :company_profiles
  resources :campaign_items
  resources :products
  resources :stores
  resources :campaigns
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  #route to campains page
  get 'Campaigns', to: 'pages#Campaigns'

  #API

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :campaigns, only: [ :index,  :show, :update, :create]
      resources :orders, only: [ :index,  :show, :update, :create]
    end
  end
end
