Rails.application.routes.draw do
  get 'password_resets/new'

  get 'password_resets/edit'

  root   'static_pages#home'
  get    '/fotografia',    to: 'static_pages#fotografia'
  get    '/invitaciones',   to: 'static_pages#invitaciones'
#  get    '/contact', to: 'static_pages#contact'

  get 'contact', to: 'messages#new', as: 'contact'
  post 'contact', to: 'messages#create'
#  get    '/signup',  to: 'users#new'
#  get    '/login',   to: 'sessions#new'
#  post   '/login',   to: 'sessions#create'
#  delete '/logout',  to: 'sessions#destroy'

#  resources :users
#  resources :account_activations, only: [:edit]
#  resources :password_resets,     only: [:new, :create, :edit, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
