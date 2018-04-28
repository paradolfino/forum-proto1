Rails.application.routes.draw do
  get 'roles/new'
  get 'roles/create'
  get 'roles/edit'
  get 'roles/update'
  get 'roles/destroy'
  resources :scenes do
     resources :posts 
  end
end
