require 'resque/server'

Rails.application.routes.draw do

  mount Resque::Server.new, :at => "/resque"

  resources :rooms do 
    resources :messages
  end
  

  resources :users_jobs, only: [:index, :create] do 
    member do 
      get "apply"
      get "candidates"
      get "show"
      post "destroy", as: "destroy"
    end

  end


  resources :jobs do
    collection do 
      get "search" 
      get "search_with_category"
    end 
  end
  
  resources :categories 

  devise_for :users, controllers: {registrations: "registrations"}
  root "home#index"
  devise_scope :user do
    get '/users/sign_out', to: 'devise/sessions#destroy'
  end

end