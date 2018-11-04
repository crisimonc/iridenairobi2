Rails.application.routes.draw do
  	devise_for :users
  	root to: 'pages#home'
  	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  	resources :motorcycles do 
  		resources :bookings, only: [:new, :create, :show]
  		resources :reviews, only: [:new, :create, :index]
  	end
  
  	resources :bookings, only: [:index]
end
