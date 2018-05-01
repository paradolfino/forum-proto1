Rails.application.routes.draw do
  resources :scenes do
     resources :posts 
  end
  resources :members
  resources :roles
end
