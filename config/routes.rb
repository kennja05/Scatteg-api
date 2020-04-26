Rails.application.routes.draw do
  resources :categories
  resources :lists, except: [:destroy, :update]
  
end
