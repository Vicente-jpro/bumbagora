Rails.application.routes.draw do
  resources :users_jobs, only: [:index, :create, :destory] do 
    member do 
      get "apply"
    end
  end
  resources :jobs
  resources :categories
  devise_for :users
  root "home#index"
  devise_scope :user do
    get '/users/sign_out', to: 'devise/sessions#destroy'
  end



  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
