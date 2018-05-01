Rails.application.routes.draw do
  
  get 'comments/new'
  get 'comments/create'
  get 'comments/edit'
  get 'comments/update'
  get 'comments/destroy'
  get '/signup' => 'members#new'
  post '/signup' => 'members#create'
  resources :members
  resources :roles
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'
  resources :scenes do
     resources :posts 
  end
  
end
