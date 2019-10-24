Rails.application.routes.draw do

  get 'seeds/index'
  get 'assets/index'
  root 'home#index'
  
  
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
















  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
