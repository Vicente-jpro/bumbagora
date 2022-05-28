Rails.application.routes.draw do
  
  resources :users_jobs, only: [:index, :create, :destory] do 
    member do 
      get "apply"
      get "candidates"
      get "show"
    end
  end


  delete '/jobs/:id', to: 'jobs#destroy', as: 'job_destroy'
  resources :jobs do
    collection do 
      get "search" 
    end 
  end
  
  resources :categories 

  devise_for :users
  root "home#index"
  devise_scope :user do
    get '/users/sign_out', to: 'devise/sessions#destroy'
  end


end
