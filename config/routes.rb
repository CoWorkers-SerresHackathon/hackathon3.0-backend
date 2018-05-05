Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    get 'areas/index'
    resources :areas
    root 'areas#index'
    
    get 'routes/index'
    resources :routes
   
    
    
    get '/login' => 'sessions#new'
    post '/login' => 'sessions#create'
    get '/logout' => 'sessions#destroy'
    
    post '/users' => 'users#create'
    
end
