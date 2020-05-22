Rails.application.routes.draw do
  
  resources :games, except: [:destroy, :update]
  resources :rounds, except: [:destroy, :update]
  resources :categories, except: [:destroy, :update]
  get '/randomlist', to: 'lists#randomList'
  resources :lists, except: [:destroy, :update]
  
end
