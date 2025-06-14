require 'resque/server'

Rails.application.routes.draw do

  resources :experiences
  mount Resque::Server.new, :at => "/resque"
  
  get "back_lists/:id_publicity/publicity_complaint", 
    to: "back_lists#publicity_complaint", 
    constraints: { id: /[A-Z][A-Z][0-9]+/ }, 
    as: "back_lists_publicity_complaint"

  get "back_lists/:id_job/job_complaint", 
  to: "back_lists#job_complaint", 
  constraints: { id: /[A-Z][A-Z][0-9]+/ }, 
  as: "back_lists_job_complaint"

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
      get "my_opportunities"
    end 
  end
  
  resources :categories 

  devise_for :users, controllers: {registrations: "registrations"}
  root "home#index"
  devise_scope :user do
    get '/users/sign_out', to: 'devise/sessions#destroy'
  end

end