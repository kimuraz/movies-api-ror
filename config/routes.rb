Rails.application.routes.draw do
  resources :comments
  resources :movies do
  	get 'comments', to: 'movies#show_comments'	
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post 'auth', to: 'auth#authenticate'
end
