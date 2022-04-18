Rails.application.routes.draw do
  
  resources :users_jobs, only: [:index, :create, :destory] do 
    member do 
      get "apply"
    end
  end
  
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
