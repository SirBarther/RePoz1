Rails.application.routes.draw do
  
  root 'cars#index'
  
  #devise_for :users

  resources :manufacturers do 
  	resources :cars
  end

end
