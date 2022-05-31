Rails.application.routes.draw do
  resources :users, only: [:new, :create]

  # Login / Logout routes
  get '/login'     => 'sessions#new'
  post '/login'    => 'sessions#create'
	delete '/logout' => 'sessions#destroy'    
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "sessions#index"
end
