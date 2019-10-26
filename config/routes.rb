Rails.application.routes.draw do

  
  root 'home#index'
  get "admin", :to => 'access#menu'
  get 'access/menu'
  get 'access/login'

  post 'access/attempt_login'
  get 'access/logout'
  get 'seeds/index'
 
  
  
  
  get 'home/index'


    resources :employees do
      
      member do
        get :delete
      end
    end


    resources :assets do
      
      member do
        get :delete
      end
    end


    resources :applicants do

    end

    resources :users do
      member do
        get :delete
      end
    end















  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
