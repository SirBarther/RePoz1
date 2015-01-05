Rails.application.routes.draw do 
  root 'cars#index'
  resources :manufacturers do 
  	resources :cars
  end
end
