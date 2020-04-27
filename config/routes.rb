Rails.application.routes.draw do
  
  resources :categories
  get '/randomlist', to: 'lists#randomList'
  resources :lists, except: [:destroy, :update]
  
end
