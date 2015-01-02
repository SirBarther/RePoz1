Rails.application.routes.draw do
  
  root 'manufacturers#index'
  
  devise_for :users

  resources :manufacturers do 
  end

end
